Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38C06C79FA1
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 05:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZ/pb2QKvmILwdyt7RkWg0mJLiA+MkX54Ec5FCOiEog=; b=Caw8IgIj0vAqtJ
	tIJVmYkbRs/joFQtsT/Ex/5bj1SO9/aeEK4V2uf5dh3yhusnTq1QhIslcWqA9oeE4mowwHzQ04pm1
	VJCsP6SzeuQe7YITS/z5PlT/+I9N5YrNogwSRYl4RK4lvHPvrxf7UAVw0lbI8d1jL/pJn4miuoYiF
	M9ethVwCVemexyTA36TMvE5RaICQxmkqTkUiGmhmKfx+/H6gSPJl4eXjJUQolI4Yv5dFHiyyKZeEB
	l8xja2zfPBYfkoKTG5pWZzLVORxNeI8iFlOA/A4KOs/YNYCcf50ztghI8mO6kydnVByDCGpA4+/qi
	hYlze2srHMSKEaL3CAHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4tyq-0000000FtLu-3n3A;
	Fri, 11 Sep 2026 05:39:20 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4typ-0000000FtLn-1vHB
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 05:39:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DE1CA601EF;
	Fri, 11 Sep 2026 05:39:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E56B11F000FF;
	Fri, 11 Sep 2026 05:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789105158;
	bh=O8ONJipxGHTu0R8c/Grz0xo9ahF6qMivmSfFqfS4fUY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DusSIJc064NNLBF+WWfg2lr3ztsalS0ns16iCsnVV5pWEw72ch0zfnswhElCMLcIU
	 Sr/hG5w1oaxR5b2pJKECg8BMR/4kpv6xLx5eq3/WHA6tMGpKJ9e4Bipu8wPWn7T9dV
	 bJ3/LVxr4rqfg3LldpC71b/zk3FtCfw52IGtCB62taOZ4/BJOPU46+EaZRGVs4keWG
	 w1El4lS2ipSzZ5Y5F8VfmiFFHeix50IoNXD0ylzJoVjb/zD7mxH6+hSwpUV8p5IFK/
	 0i/OhO1FPpwT7eOLCYUzT7zwPR4Ff04glReK0oMeiY1YR6ZBgoQmW63wMpW87mNZPj
	 K2w8s0/J2NTCw==
Date: Fri, 11 Sep 2026 07:39:12 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v4 9/9] phy: qualcomm: qmp-combo: Fix error propagation
 in qmp_combo_dp_power_on()
Message-ID: <z5ufkalh5jlornxfjhosnb5he37trrliyfyl4qs6hug5ju23rp@g3o5h4bqrtj7>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
 <20260908-glymur-phy-v3-v4-9-ff22e5150538@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260908-glymur-phy-v3-v4-9-ff22e5150538@oss.qualcomm.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBTZXAgMDgsIDIwMjYgYXQgMDc6MzE6MDJQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gVGhlIGNvbmZpZ3VyZV9kcF9waHkoKSBjYWxsYmFjayBjYW4gcmV0dXJuIGFuIGVycm9y
IChlLmcuIC1FVElNRURPVVQgb24KPiBQTEwgbG9jayBmYWlsdXJlKSwgYnV0IHFtcF9jb21ib19k
cF9wb3dlcl9vbigpIHdhcyBpZ25vcmluZyB0aGUgcmV0dXJuCj4gdmFsdWUgYW5kIGFsd2F5cyBy
ZXR1cm5pbmcgMC4KPiAKPiBDYXB0dXJlIHRoZSByZXR1cm4gdmFsdWUsIHNraXAgc2V0dGluZyBk
cF9wb3dlcmVkX29uIG9uIGZhaWx1cmUsIGFuZAo+IHByb3BhZ2F0ZSB0aGUgZXJyb3IgdG8gdGhl
IGNhbGxlci4KPiAKCk1pc3NpbmcgRml4ZXMgdGFnLgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K61
4K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBt
YWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

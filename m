Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F3F2C624D6
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 13:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WtuwX6mL6zwicrPVFSJP260A4LhGgmXAB1jprGtzeVI=; b=vu/7qXlqrdbjk2
	qgcy1ZWI+JkxwxBeqPR6kHQgUiRtdn+Jp23nHv751LTQ0LkPffomEJibXuh84xjLxOvIBDTeSiWWl
	i6qqrht/zfjFaOeq62a+OglOpCskR7PfXFagRQUTu1JLA1MQOjxnCIjHGbsQ0wHaEDaFsHahrs/tM
	wwDDMvQ0wRZZeFN/d+zF+xcYginsFn/eCTCg0hGdZoTx6uvE3e6S90E5ekvKBPO6A8EViJZ8Rsmsz
	o/fyPDM3wsOStOUu1AfRLRG33B7d7WSnzbgA2AQOK9pWQS7P9HAf19yp5HxnjabcHk9ESphEZV0VS
	Ge+s1h4116lRRojPBS6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1lU3-0000000Es5w-3dnb;
	Wed, 02 Sep 2026 13:58:35 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1lU3-0000000Es59-0XoW
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 13:58:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 62591600D0;
	Wed,  2 Sep 2026 13:58:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 571AB1F000E9;
	Wed,  2 Sep 2026 13:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788357514;
	bh=zebfgfEx2sWxKDAAqeM35LzzkO/Mo1voZLLWtrewGgg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JbzmOCOgJIPXB6ApRQoZR68XDtdGIvzELgBdZnZPpCafDkQuZuXEVsEaGbLfgNARd
	 MDXVdvUTn22Fo4ubAeekiKq+9cguwThSyEl2ierhzHDp5+FtuinBqmK2yYWP4GHahZ
	 DQcakTTW53kbCCmyg7H9DNPxJvJaolX8nwtu1qt2rjgJWH2ftKPwKOEPtO9IWUdtLY
	 emA90v3ZB9wdTH4zvQ1yiAVJ1NM7hzJRZ9aZwQtwZiXDs3blehl+/Lj08n65rgRJI2
	 Zb4fd3NtE6nOEXwiyfsFNd1sKI26COBkMtRbHE8FQl/hbKxVvuIr59IgFN1kxneAVU
	 sfwGemp/LqDaQ==
Date: Wed, 2 Sep 2026 15:58:17 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: David Carlier <devnexen@gmail.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, qiang.yu@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, krishna.chundru@oss.qualcomm.com, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Check clock-output-names count
 in the multi-PHY driver
Message-ID: <g25bkftt7l22pr4glysnt4ce75lubvbqjcgsnqzsabuurt5kkj@q2fjdyhnlext>
References: <20260825225729.230493-1-devnexen@gmail.com>
 <20260825225729.230493-2-devnexen@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260825225729.230493-2-devnexen@gmail.com>
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

T24gVHVlLCBBdWcgMjUsIDIwMjYgYXQgMTE6NTc6MjlQTSArMDEwMCwgRGF2aWQgQ2FybGllciB3
cm90ZToKPiBvZl9wcm9wZXJ0eV9jb3VudF9zdHJpbmdzKCkgcmV0dXJucyBhIG5lZ2F0aXZlIGVy
cm5vIHdoZW4gdGhlIHByb3BlcnR5Cj4gaXMgbWlzc2luZyBvciBtYWxmb3JtZWQuIFRoZSB2YWx1
ZSB3YXMgcGFzc2VkIHN0cmFpZ2h0IHRvCj4gZGV2bV9rY2FsbG9jKCksIHdob3NlIG92ZXJmbG93
IGNoZWNrIHJlamVjdGVkIGl0LCB0dXJuaW5nIGEgZGV2aWNlIHRyZWUKPiBwcm9ibGVtIGludG8g
YSBib2d1cyAtRU5PTUVNIHdpdGggbm8gZGlhZ25vc3RpYy4KPiAKPiBGaXhlczogMTc4MWJlM2M4
YTVkICgicGh5OiBxY29tOiBxbXAtcGNpZTogQWRkIFFNUCBQQ0llIE11bHRpLVBIWSBkcml2ZXIi
KQo+IFNpZ25lZC1vZmYtYnk6IERhdmlkIENhcmxpZXIgPGRldm5leGVuQGdtYWlsLmNvbT4KClJl
dmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBv
c3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB5B8C79F99
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 05:41:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ru7AqnMC3aTRBFBhot3rIHmwDWyndaL3zXOPGe9UmDI=; b=GudZSsdEhS5AUB
	F29Yv6HSJDtwaeGqUqiXxEKlPT0/3ivZyNoAUAjseiOD5cncEYi+lOKAH3XDfQcqZR0lVdmzZKFaN
	IAoWP3qF4r6K1699luKP/CxkhyMi1yImkd6d+RkAWE7cgPXw43DFE7DTUIehSFFIWG3GDVZfEKQUm
	VigUCVhw7BoGJ/fzPo2387dTrYoNLrfl5I9LqqA6Tb5n7RqcuR81NfXbNrfs33KVjpATvt/z1A1hr
	qq5HWE0bPk+qAb3p49nJdBzoJMz+Kz8sB9oqwdo1Y1jPIl9vUsJ0M/L7kUG84mLYxW5fkinGpJrq1
	YUxO/U8HZLaqvi7cndTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3oa9-000000085n7-2Z5Q;
	Tue, 08 Sep 2026 05:41:21 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3oa6-000000085md-12vX
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 05:41:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E235341487;
	Tue,  8 Sep 2026 05:41:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2ABEA1F00A3A;
	Tue,  8 Sep 2026 05:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788846076;
	bh=Zbc3/QBgryJy1J1i2LuokY1ENHtSEAeqBItdH3oUH18=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Bp3IoIBeFpyYdKofgPA0BpCQOp3AYApyUv94GW8kvSYzeTu+4SaM7YeDrb5ZM5WDV
	 QTVQNBwFNpbpuNas4ASHqedNjMdy7wQP3k6SOjar6b0m1O0HspMXHBlhmqGUVqrAmj
	 CFtpuGMq63fOs1F3Zi04WWb2qKUnkYpT/+2TdiJKup11HjVY5EoxaCmwgepWcYSXKx
	 2mFvoTFpyI20qdZNoCqFB6OhI/Tf+aA6nRr6Id4JwY5ryIqPNPRCs2DYUEBy+R4d0P
	 PLz6TzWjej83Mz/OajXr/c+s98rsLEJrDHy39i/0wlbphgIqYSmmiBtZEzrl+kL4eP
	 yu+efC3tYOEMA==
Date: Tue, 8 Sep 2026 07:41:08 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nabige Aala <nabige.aala@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>, 
	Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/4] phy: qualcomm: qmp-combo: Add DP COM v8 header
 and fix register layout
Message-ID: <zhh54vk4imnad6yxvxl6cpqkvtqasbfwnsgzsfb4kzmpjj44gg@uyywbrcfq4tc>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-1-8e73ce7c4636@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260828-glymur-phy-v3-v3-1-8e73ce7c4636@oss.qualcomm.com>
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

T24gRnJpLCBBdWcgMjgsIDIwMjYgYXQgMDM6MTM6MTNQTSArMDUzMCwgTmFiaWdlIEFhbGEgd3Jv
dGU6Cj4gRnJvbTogUml0ZXNoIEt1bWFyIDxyaXRlc2gua3VtYXJAb3NzLnF1YWxjb21tLmNvbT4K
PiAKPiBBZGQgdGhlIG5ldyBEUC1zcGVjaWZpYyBRU0VSREVTIENPTSB2OCBoZWFkZXIgZmlsZSBh
bmQgdXBkYXRlIHRoZQo+IHJlZ2lzdGVyIGxheW91dCB0byB1c2UgRFAtc3BlY2lmaWMgc3RhdHVz
IHJlZ2lzdGVyIG9mZnNldHMgZm9yCj4gQ19SRUFEWV9TVEFUVVMgYW5kIENNTl9TVEFUVVMgcmVn
aXN0ZXJzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFJpdGVzaCBLdW1hciA8cml0ZXNoLmt1bWFyQG9z
cy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWFoYWRldmFuIFAgPG1haGFkZXZhbi5w
QG9zcy5xdWFsY29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTmFiaWdlIEFhbGEgPG5hYmlnZS5h
YWxhQG9zcy5xdWFsY29tbS5jb20+CgpNaXNzaW5nIEZpeGVzIHRhZyBwb2ludGVkIG91dCBieSBL
b25yYWQuIFdpdGggdGhhdCBhZGRlZCwKCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0g
PG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u
4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxp
bnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

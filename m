Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC708C48BC4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Feb 2024 08:26:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3mA9CfIFAL9rN8bHBoagbObqK/rFqkFkpT1+WmbNcU=; b=kk7UN/OQCgJGgk
	qwZKlQcX+NaK7nAnnHFZCSvth+DRZcszLxaZGm2J4UnY200BVn41oZDcab6NeDCM4+UOCc57CSH81
	15sj4b9xxGk0SvuXfVCxmxR1rcTkkvCCaoJgabDZkriNGRdwgnfA+vh42w/dcuFpB5SKLC0SBBe12
	3bqjB5LY5P0xtL/rUd59+BEeLi326ej3VF2m4opuPMazwLjCCGHKhmELXimO6OxdS05y0m8VnS0eE
	tUgy0oholvSPnBFGLd0Io+TIMcNrrM6d7X36WjIWVisjrl+ciGJfWVTBrGHRick4Xp2bQaEfW08qU
	BvlGbzRbel/uShIKwRwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcLSq-0000000DhTj-0q8Q;
	Tue, 20 Feb 2024 08:26:56 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcLSn-0000000DhPB-1x9T
	for linux-phy@bombadil.infradead.org;
	Tue, 20 Feb 2024 08:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:Subject:References:Cc:To:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=LlpJhanaLVteChxIlS3aNvL6fCgm+UK1ucDDJS1DMCU=; b=EdpJqKVax/adT11OCjIRSDyFcI
	o5Jx8doPLlWzYUXNfh3iKkEvbdEMbiZMRw1kkdy3K7v0cfSMDb3dbRmEYqV5+cw07M0eBQBmPls63
	2MY3Rn7lCx3Pc1HJxzq8JVq8P8fg2jV5ttalmvlzTK7Day0UGZD8w9PEzROBcV6IJAEjnCtW/22EP
	zE0m/L8MAelqD4JyFRQnGEKgBbH+OnVfLKtsqIvcqxTSnDPh5HP3VLZAuDKc12eIGSv3SczKQIjH1
	CAZuvM3Ntfx2DoaOe1ClFxRpQ3orEQt3B1xxTtr4zvudr4XHP3rxnT8iBgF555WExLk+FK7utVarK
	U9iBy+Ag==;
Received: from mout.web.de ([212.227.15.3])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcLSg-00000001dAS-1JY5
	for linux-phy@lists.infradead.org;
	Tue, 20 Feb 2024 08:26:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=web.de; s=s29768273;
	t=1708417584; x=1709022384; i=markus.elfring@web.de;
	bh=FbwtcBufwoXbPOYPnUNJ/O5sjaNC9PrMa+OFLq/9LlE=;
	h=X-UI-Sender-Class:Date:To:Cc:References:Subject:From:
	 In-Reply-To;
	b=e9uNO9s9BlPlVK+KiQU0PIEORK8P37I2txeksl/zdJew63C90YrlGcWsm6Hu4Hue
	 6ljrcEcfq9efe8BC4qP7lzSWY4/cJKmXgeh4kh2GA6Ab5pc2t4Cli6eI2aX+/LFxp
	 eShaxJI1uQRCHSUgE/M3sDjBVhoE1PshpN9ZGPZkHhHvRA/Jh3hTsAAlJXuIIqiou
	 /ybXYix9AEHJLFZcrGYmM8qwXF0a9IIvlTEwDgoNad3g+4s/ZKjH9MYInmI9bnlVc
	 LySTN7kZRkolEB7j2W+DWXMcYupogIapYd+ltxsRyKb/3gdFzKFxO54FE+7JBNCSm
	 er/rX3U/+vMS+IV7JQ==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.21] ([94.31.80.95]) by smtp.web.de (mrweb006
 [213.165.67.108]) with ESMTPSA (Nemesis) id 1M4bYo-1rbnUP3YVK-001fxX; Tue, 20
 Feb 2024 09:26:23 +0100
Message-ID: <41ca529d-ad0c-40e7-b68c-c90297815bbc@web.de>
Date: Tue, 20 Feb 2024 09:25:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Johan Hovold <johan+linaro@kernel.org>, freedreno@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-phy@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Bjorn Andersson <andersson@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Vinod Koul <vkoul@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>,
 Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kuogee Hsieh <quic_khsieh@quicinc.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Clark <robdclark@gmail.com>, stable@vger.kernel.org
References: <20240217150228.5788-4-johan+linaro@kernel.org>
Subject: Re: [PATCH 3/6] soc: qcom: pmic_glink_altmode: fix drm bridge
 use-after-free
Content-Language: en-GB
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20240217150228.5788-4-johan+linaro@kernel.org>
X-Provags-ID: V03:K1:oGPEHuM2HIdXgcEMfwBFL/voM7jpNFUkHFQ+0xcJgl7i8MgwK7X
 JRpaE+mgDDalhXTyU2+1PFOILTsPDZpOepGGIJfCQ/2E3ldh+sgz6VTMBA01/EflCrvIeWY
 X6YhCNZlgsWrsvUtm8o2z+5W3E7+5Yd2k54efbPAD5SQDEAsv4P7H2BQFpKQnAy0uARDOGK
 1wwp3iW69af1k6eyCiBoQ==
UI-OutboundReport: notjunk:1;M01:P0:dgtWsq+B+98=;0ssw8wp6F6jnkVukgPpAy80HpQc
 B0VMFA61OwPAzcw1oE4HEkJI7Op8/UpgfZD/rlEvXu7wBJAltZnVnEH4QBK3bR6eoqIkHYpQ3
 a+NQ7/veaLawT/cH0RCDP6lm/j3niZpzb0CUvZiz08gIn478ffjixzszvFQ3nwCu6Uk/2cbZw
 1lBdOowsMiRl5XYsrKVcTqXngRFyOQ8SaTtPmk5Ocd6GHZGSPbPWnZhxXYQrACxB3DEfP0zj+
 OgghtCVE1xS7INrVaqaoFlTWicIfb+TO/All7DwO0jxT5TnGCvyj0xiK13IcPE4yfzG5cXk+4
 FXCNlG8KENRG+6N/YDVgCl1h5L13SfrSfon9XMCLUbeuC0bPlYx3ESm7tmaXMx+i9vLlnu3Ij
 cr4ajn/JugewLTyYfpvg3HGWrZDDvY0lgR18LO4Mgh2GkF0TXEwTYk6yeI8ehoClatHTPiMEQ
 UkriLgw2lJ7hxlS4YiX8OJneDycZUdyFCCs+GHFVgXnKzA8WLTuXBF0xhxkgbnmZaLPs9eOfk
 ld8pY8kpC0FpG1LcNjEY0PG9eOrGQfv8CNbfcmm5rf8dQiD/LdlXdJE1rbKpOW/YsnSIcGrEG
 JMfJTj7yCiFrNZJYI+RkVnf+dnQstf10h32TAnwbBfExX/OHZUBI0TH2W5pyXCscDYnThQKHW
 sLphBvemEcnXdJDIkba0ET40K11L5YTJuIuiZyQdVn+mtYfyfu9oBU610S+X5NC9FU2RlEEGJ
 XKH6PwGUwmR3NkZinJ70pekoeQfe9t4woQs0KZtNZDTWe0fhh65IQ6qWmSuccCqTsLcGVsImx
 Eesic4I3yq1Dcu9fB0rDoBFux2rfDY6Ba322mXCTCYqKQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_082648_783527_685CE334 
X-CRM114-Status: GOOD (  11.11  )
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

4oCmCj4gU3BlY2lmaWNhbGx5LCB0aGUgZHAtaHBkIGJyaWRnZSBpcyBjdXJyZW50bHkgcmVnaXN0
ZXJlZCBiZWZvcmUgYWxsCj4gcmVzb3VyY2VzIGhhdmUgYmVlbiBhY3F1aXJlZCB3aGljaCBtZWFu
cyB0aGF0IGl0IGNhbiBhbHNvIGJlCj4gZGVyZWdpc3RlcmVkIG9uIHByb2JlIGRlZmVycmFscy4K
Pgo+IEluIHRoZSBtZWFudGltZSB0aGVyZSBpcyBhIHJhY2Ugd2luZG93IHdoZXJlIHRoZSBuZXcg
YXV4IGJyaWRnZSBkcml2ZXIKPiAob3IgUEhZIGRyaXZlciBwcmV2aW91c2x5KSBtYXkgaGF2ZSBs
b29rZWQgdXAgdGhlIGRwLWhwZCBicmlkZ2UgYW5kCj4gc3RvcmVkIGEgKG5vbi1yZWZlcmVuY2Ut
Y291bnRlZCkgcG9pbnRlciB0byB0aGUgYnJpZGdlIHdoaWNoIGlzIGFib3V0IHRvCj4gYmUgZGVh
bGxvY2F0ZWQuCuKApgoKSSBnb3QgdGhlIGltcHJlc3Npb24gdGhhdCB0aGUgY2hhbmdlIGRlc2Ny
aXB0aW9uIGNhbiBiZSBpbXByb3ZlZCBhbm90aGVyIGJpdC4KCjEuIFdpbGwgYW55IGFkZGl0aW9u
YWwgaW1wZXJhdGl2ZSB3b3JkaW5ncyBiZWNvbWUgaGVscGZ1bD8KICAgaHR0cHM6Ly9naXQua2Vy
bmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXguZ2l0L3RyZWUv
RG9jdW1lbnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3Q/aD12Ni44LXJjNSNu
OTQKCgrigKYKPiArKysgYi9kcml2ZXJzL3NvYy9xY29tL3BtaWNfZ2xpbmtfYWx0bW9kZS5jCj4g
QEAgLTc2LDcgKzc2LDcgQEAgc3RydWN0IHBtaWNfZ2xpbmtfYWx0bW9kZV9wb3J0IHsKPgo+ICAJ
c3RydWN0IHdvcmtfc3RydWN0IHdvcms7Cj4KPiAtCXN0cnVjdCBkZXZpY2UgKmJyaWRnZTsKPiAr
CXN0cnVjdCBhdXhpbGlhcnlfZGV2aWNlICpicmlkZ2U7Cj4KPiAgCWVudW0gdHlwZWNfb3JpZW50
YXRpb24gb3JpZW50YXRpb247Cj4gIAl1MTYgc3ZpZDsK4oCmCgoyLiBIb3cgZG8geW91IHRoaW5r
IGFib3V0IHRvIHN0cmVzcyBzdWNoIGEgZGF0YSB0eXBlIGFkanVzdG1lbnQ/CgpSZWdhcmRzLApN
YXJrdXMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=

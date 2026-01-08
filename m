Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53036D1D486
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 19:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ct1N2O5nr6V4iWY8Y2HEmcpYTqUEFIbkdbWYuWk/dxw=; b=a58xZnJBff0tjV
	JmwbrEX3CVYliaMb4uRO6Bi2hMxoNubyT1UHdE4WbOZAnnuEFPXsIHddUYNDfg65pYyPuKAQsw2wz
	hNx+zddlHfARIDo4VqZbhJ9Q+RXWfDwFTdBcMAEdyZ0RMBIgfrrPU5QMG3Iieo3iyIHMJk6xg7kEX
	Pqi6fUl1qKJyP3WFQhGXdXJ5eVeAnsMiAihTpzFhJ1gk6mAgLQ0bZu5td+jV/m3XEI5/cH3mdsF59
	vTm8AsUOg4xxZJGJFvVVM4DsZZUv72PWFMc5WksKsUL50ozm3FWQJo/xJjoVWegwslOTPjyLMH/Qc
	w5FukB330fvUthGP+iJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdvIn-00000000hT1-3qL8;
	Thu, 08 Jan 2026 19:04:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdvIk-00000000hRp-26d9;
	Thu, 08 Jan 2026 19:04:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0xTYPYEZSyUOR4owbPfE3fSToiJ/CPOSgdHTNpnvRAc=; b=OZcb6i7Kq0PC81CDhI9KMTImkq
	NobBuzSsnV6t0TfjHzeNm+x67CZVPP5uBcyHc0kSLopeR1utT7FGxlTDD8uG8NbSSAS7gWhAPWpKx
	FuJVPHFhrQQl/VUhczvxZkbK50oKF2E3eRdOwLyuyO/CxV8LEDjMGguYoFPbqVXKoPMdr2nMvf4U1
	JpJ2XUYL9staaJyK8EbqDYTfCkJereVgwZHMq7DZxumaGSv6K544FBd7EvrA9HrT+EVPOsWgK+1Hu
	lyOIpQI6HjfPQxhhqDk21aqx70ZH3dYd8SBa+K4F/fNkXDpCi5Dd3lQwE4IJ8xQZzxQZP5/furfah
	GZD4Zn4A==;
Received: from [192.76.154.230] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdvIU-001XS9-BV; Thu, 08 Jan 2026 20:03:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: [PATCH 8/9] drm/rockchip: Drop ROCKCHIP_IOMMU depend for DRM_ROCKCHIP
Date: Thu, 08 Jan 2026 20:03:50 +0100
Message-ID: <4072834.X9hSmTKtgW@phil>
In-Reply-To: <20251106020632.92-9-kernel@airkyi.com>
References: <20251106020632.92-1-kernel@airkyi.com>
 <20251106020632.92-9-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_110406_586602_E764CFD8 
X-CRM114-Status: GOOD (  17.63  )
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

QW0gRG9ubmVyc3RhZywgNi4gTm92ZW1iZXIgMjAyNSwgMDM6MDY6MzEgTWl0dGVsZXVyb3DDpGlz
Y2hlIE5vcm1hbHplaXQgc2NocmllYiBDaGFveWkgQ2hlbjoKPiBGcm9tOiBDaGFveWkgQ2hlbiA8
Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gCj4gT24gdGhlIFJLMzUwNiBwbGF0Zm9ybSwg
dGhlcmUgaXMgbm8gaW9tbXUgaGFyZHdhcmUuIEFuZCBldmVuIG9uCj4gcGxhdGZvcm0gdGhhdCBo
YXZlIGlvbW11IGhhcmR3YXJlLCBpdCBzaG91bGQgYmUgcG9zc2libGUgdG8gdXNlCj4gVk9QIHdp
dGhvdXQgZW5hYmxpbmcgaW9tbXUuIEluIHRoaXMgY2FzZSwgYSBjb250aWd1b3VzIG1lbW9yeQo+
IHNwYWNlIGxpa2UgQ01BIHNob3VsZCBiZSB1c2VkLgo+IAo+IFNvIHRoaXMgcGF0Y2ggcmVtb3Zl
cyB0aGUgZGVwZW5kZW5jeSBvbiBST0NLQ0hJUF9JT01NVS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBD
aGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9LY29uZmlnIHwgMyArKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4g
aW5kZXggYjdiMDI1ODE0ZTcyLi5hMDU2ZDQxOTE5MGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3JvY2tjaGlwL0tjb25maWcKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
S2NvbmZpZwo+IEBAIC0xLDcgKzEsOCBAQAo+ICAjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBH
UEwtMi4wLW9ubHkKPiAgY29uZmlnIERSTV9ST0NLQ0hJUAo+ICAJdHJpc3RhdGUgIkRSTSBTdXBw
b3J0IGZvciBSb2NrY2hpcCIKPiAtCWRlcGVuZHMgb24gRFJNICYmIFJPQ0tDSElQX0lPTU1VCj4g
KwlkZXBlbmRzIG9uIERSTQo+ICsJZGVwZW5kcyBvbiBST0NLQ0hJUF9JT01NVSB8fCAhUk9DS0NI
SVBfSU9NTVUKCkkgZG9uJ3QgcmVhbGx5IHVuZGVyc3RhbmQgdGhpcyB5ZXMrbm8gbGluZSA6LSkK
CkNhbid0IHlvdSBqdXN0Ci0gZHJvcCB0aGUgZGVwZW5kZW5jeSBhbHRvZ2V0aGVyCm9yCi0gZG8g
YSBkZXBlbmRzIG9uIFJPQ0tDSElQX0lPTU1VIGlmIEFSTTY0CgoKSGVpa28KCj4gIAlkZXBlbmRz
IG9uIE9GCj4gIAlzZWxlY3QgRFJNX0NMSUVOVF9TRUxFQ1RJT04KPiAgCXNlbGVjdCBEUk1fR0VN
X0RNQV9IRUxQRVIKPiAKCgoKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK

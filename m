Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72E4FCD5BB1
	for <linux-phy@archiver.kernel.org>; Fri, 22 May 2026 10:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGE8mPulCzL+CcAhNHzJyzNjdWX2O+8iCxw/v9+YS38=; b=OJvFJc+JxqEyLB
	f94yhUR0HMYa5yiwtyzo/0aaX4rxgPShuLdEiMzP2Y3onQmvgf+E2XVOBdtaE2EOuxCDrEGAes2Sf
	iWW4czvC5Ey2xiM/A8wKHTwyWhn49NO+nYV9IO1N9AFM/+ksQIuC3hqAfCsXNXYpu0DG7l5kslQFe
	/FEZRNB6cGLOgQBlGQw8EUkPhOZ1xUoOd046grlJfA4zBXl5CsdG0sf46CBz1SWPslayjNcOUutoh
	WME1aVKGsPHVbnTTsSNe8DO001RdEC++EEr+YdU1sbaSUeb4tzwKB3t+LuYY9r1eZSaXHzM39WmGv
	Lff97SbiF/DTGWPj7esA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNZa-0000000AZCS-0vOc;
	Fri, 22 May 2026 10:57:46 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQNZY-0000000AZCB-3k2c
	for linux-phy@lists.infradead.org;
	Fri, 22 May 2026 10:57:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5738E60136;
	Fri, 22 May 2026 10:57:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F6471F000E9;
	Fri, 22 May 2026 10:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779447464;
	bh=x55ir9CbNnQ6s4TZzGXMmcUz/OBLZ2NJfrzb19xzIGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kjm7fhHXvrxwOJGNlaCoiWsKNXxDj+zOtCx7U1Wcu5qSkfLiLLh25seajR0hDIHdp
	 TlIJgORblyqp1DJp03u0iv0e0aBK0XwzmP1NGyv7FdBqRdRb67iZcrpnWDS3h7pV0b
	 dQAtLaXJ/D/fMNKIeNhVAOGerJJsDT+0N1zkv5vQ75GTlqqZkCPgqmiPDB4oSd5c5j
	 fcilbWalrXtQHSRPqG/emQV7sN/fWP6OA8keRi+oG7hpwkUq1b/px6Q5p6o888eFsW
	 hCfC5nYYlsp7eXLtVt5y52z/IMCX0lBLkFGCVFadYrIvwcSDpuCSdBWHPlJIC8GoxU
	 I0W7gzafPob8w==
Date: Fri, 22 May 2026 16:27:35 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC v4 5/9] phy: qcom: qmp-pcie: Refactor pipe clk
 register and parse_dt helpers
Message-ID: <fkcidw46hdsrrufxhhkk66mmitxnswmghpypyvtmax3x6vmnlp@2er6xgymxdf2>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-5-269cd73cc5d1@oss.qualcomm.com>
 <ipzncrxi3x45fc6tz5xb7frxt62zmg4gwr25xmvzghlbt5miio@7eavln3cydfa>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ipzncrxi3x45fc6tz5xb7frxt62zmg4gwr25xmvzghlbt5miio@7eavln3cydfa>
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

T24gV2VkLCBNYXkgMjAsIDIwMjYgYXQgMDc6MjU6MDFQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBNb24sIE1heSAxOCwgMjAyNiBhdCAxMDo0NzoxNlBNIC0wNzAwLCBRaWFu
ZyBZdSB3cm90ZToKPiA+IFNvbWUgUU1QIFBDSWUgUEhZIGhhcmR3YXJlIGJsb2NrcyBjYW4gYmUg
c3BsaXQgaW50byBtdWx0aXBsZSBzdWItUEhZcwo+ID4gdW5kZXIgYSBzaW5nbGUgRFQgbm9kZSwg
ZWFjaCByZXF1aXJpbmcgaXRzIG93biBwaXBlIGNsb2NrIHJlZ2lzdHJhdGlvbiBhbmQKPiA+IERU
IHJlc291cmNlIG1hcHBpbmcuIFRoZSBjdXJyZW50IGhlbHBlcnMgYXJlIHRpZ2h0bHkgY291cGxl
ZCB0byBhIHNpbmdsZQo+ID4gcW1wX3BjaWUgaW5zdGFuY2UsIHdoaWNoIHByZXZlbnRzIHJldXNl
IGFjcm9zcyBzdWItUEhZIGluc3RhbmNlcy4KPiA+IAo+ID4gUmVmYWN0b3IgX19waHlfcGlwZV9j
bGtfcmVnaXN0ZXIoKSBhcyBhIGdlbmVyaWMgaGVscGVyIGFuZCByZWR1Y2UKPiA+IHBoeV9waXBl
X2Nsa19yZWdpc3RlcigpIHRvIGEgdGhpbiB3cmFwcGVyIGFyb3VuZCBpdC4gU2ltaWxhcmx5LCBl
eHRyYWN0Cj4gPiBxbXBfcGNpZV9wYXJzZV9kdF9jb21tb24oKSBmcm9tIHFtcF9wY2llX3BhcnNl
X2R0KCkgdG8gaG9sZCB0aGUgcmVnaXN0ZXItCj4gPiBtYXBwaW5nIGFuZCBwaXBlLWNsb2NrIHNl
dHVwIHRoYXQgd2lsbCBiZSBzaGFyZWQgYmV0d2VlbiBzdWItUEhZIGluc3RhbmNlcywKPiA+IHdp
dGggcGlwZSBjbG9jayBuYW1lcyBwYXJhbWV0ZXJpc2VkIHBlciBpbnN0YW5jZS4KPiA+IAo+ID4g
VGhpcyBpcyBhIHByZXBhcmF0b3J5IHN0ZXAgYmVmb3JlIGFkZGluZyBtdWx0aS1QSFkgc3VwcG9y
dC4gTm8gZnVuY3Rpb25hbAo+ID4gY2hhbmdlIGZvciBleGlzdGluZyBwbGF0Zm9ybXMuCj4gPiAK
PiA+IFNpZ25lZC1vZmYtYnk6IFFpYW5nIFl1IDxxaWFuZy55dUBvc3MucXVhbGNvbW0uY29tPgo+
ID4gLS0tCj4gPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYyB8IDc2
ICsrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDQ0
IGluc2VydGlvbnMoKyksIDMyIGRlbGV0aW9ucygtKQo+IAo+IEknZCBzdWdnZXN0IHNwbGl0dGlu
ZyB0aGUgR2x5bXVyIFBIWSB0byBhIHNlcGFyYXRlIGRyaXZlci4gT3RoZXJ3aXNlIHdlCj4gZW5k
IHVwIGhhdmluZyB0b28gbWFueSBzaW5nbGUtcGxhdGZvcm0sIHNpbmdsZS1kZXZpY2Ugc3BlY2lm
aWNzIHdoaWNoCj4gZG9uJ3QgYXBwbHkgdG8gb3RoZXIgcGxhdGZvcm1zLgo+IAoKSSBkb24ndCB0
aGluayB0aGF0J3MgcmVhbGx5IG5lZWRlZC4gVGhpcyBzaGFyZWQgUEhZIGNvbmNlcHQgaXMgZ29p
bmcgdG8gYmUKYXBwbGljYWJsZSB0byB1cGNvbWluZyBTb0NzIGFzIHdlbGwuIEFuZCBtb3Jlb3Zl
ciwgdGhlIHNwbGl0IHdvbid0IGJlIGNsZWFuCmVpdGhlci4gV2Ugc3RpbGwgbmVlZCB0byByZXVz
ZSBhIGxvdCBvZiBjb21tb24gbG9naWMgaW4gdGhlICdwaHktcWNvbS1xbXAtcGNpZScKZHJpdmVy
IGFuZCBtYXkgb25seSBlbmQgdXAga2VlcGluZyB2ZXJ5IG1pbmltYWwgY29kZSBpbgoncGh5LXFj
b20tcW1wLXBjaWUtZ2x5bXVyJy4KCklmIHlvdSBhcmUgY29uY2VybmVkIGFib3V0IHRoZSBmaWxl
IHNpemUgb2YgJ3BoeS1xY29tLXFtcC1wY2llJywgdGhlbiB3ZSBzaG91bGQKbW92ZSB0aGUgU29D
IHNwZWNpZmljICdjZmcnIHN0cnVjdHMgaW50byBhIHNlcGFyYXRlIGZpbGUgYXMgdGhhdCdzIHdo
YXQKb2NjdXB5aW5nIG1ham9yaXR5IG9mIHRoZSBzcGFjZS4KCi0gTWFuaQoKLS0gCuCuruCuo+Cu
v+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C57D0C5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:18:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Snf9GWJdGzS8FxoB0frRz3CZQupcBGeKbe5miYOAkM0=; b=lC1/BNe+jUIvW7
	xAvpfBn7enynzhzHsmuxPSa59VzGD7rSgxSh7lcRtcaHpqJ03D0w4mg8F9bP5zXGh1ikK3wI+u9WJ
	y/JWEljZMfng8u1rfa0zm+GYr17MGQdMvZPh7Kotyw0gY9SsFLzYPeS8MYAX210bZzPL5t7YU3uFO
	Ac9P/xfFzys59WppDud5eUn1iu4uruesIP6zUjNkloXKpiHL03u+A8tiTFlfDvl60UlyC8hbyH+LG
	PJgdCEPUCdpRTimG6UNFd/BSvE+MGkIMviL7nnJO8Wh5k+ykj9kD9u8ka1RRf4601LECtNDhClK3N
	ALZJrdf4kSVjI9rXw1iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJWd-000000080LC-29BS;
	Fri, 07 Aug 2026 12:18:11 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJWc-000000080Kx-3N8S
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:18:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 31403600D8;
	Fri,  7 Aug 2026 12:18:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A8B061F00AC4;
	Fri,  7 Aug 2026 12:18:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786105088;
	bh=hRYmEDOjT6HknsqMzt88izSGG50xsp5fB4RzjMuEN3M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HRfmfWVf7tzYawTMyWoz0fPJuKHape63Rft2tbMoZwxlCPyPxDjadlpk14XdfAmIx
	 DOHzXfC8051vs8BD2sydlMCxsNvA2EF9SUXZccfgGIL462qiAd/2It/jyHcvqTv/NF
	 CchZ4QscyM7Ud+ZEJr8sm67KktdScJoahiOHJq0qE7XPaIdH72dJJ9wtSejYud9LE6
	 okgorE3WX/dMXYgzJ1bVI2iZiUG/wFz/VFrmIUwWMrcD7wGBREnL/JxuXJ1qSi8wAl
	 2chHMGTpt/fTe10mI0CkYnI4S9kyz8FTFkvNt8DvVI8Mtk2SgAwR2gX9az1rc4CiD/
	 DckoZAfN7cBqQ==
Date: Fri, 7 Aug 2026 14:17:57 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, usb4-upstream@oss.qualcomm.com, 
	Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>, Mika Westerberg <westeri@kernel.org>, 
	Sven Peter <sven@kernel.org>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/5] phy: core: Define TBT phy_mode
Message-ID: <rb47gnay6drypdef44ddf3cm3zdwxb5pcl4wwboyz4lftth2sb@xmc5dgpokgkl>
References: <20260730-topic-usb4phy-v3-0-ccf0f7ea98b5@oss.qualcomm.com>
 <20260730-topic-usb4phy-v3-2-ccf0f7ea98b5@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260730-topic-usb4phy-v3-2-ccf0f7ea98b5@oss.qualcomm.com>
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

T24gVGh1LCBKdWwgMzAsIDIwMjYgYXQgMDQ6MTk6MTRQTSArMDIwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBGcm9tOiBLb25yYWQgRHliY2lvIDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5j
b20+Cj4gCj4gVGhlcmUgZXhpc3QgT1MtYWNjZXNzaWJsZSBVU0I0IGFuZCBUaHVuZGVyYm9sdCBQ
SFlzIHRoYXQgbmVlZCBzcGVjaWZpYwo+IGNvbmZpZ3VyYXRpb24uIERlZmluZSBhIG5ldyBwaHlf
bW9kZSBmb3IgdGhlbS4KPiAKPiBDdXJyZW50bHksIFVTQjQgYW5kIFRCVDMgYXJlIGRlZmluZWQg
YXMgc3VibW9kZXMsIGJlY2F1c2UgdGhleSdyZSBxdWl0ZQo+IGRpc3RpbmN0LCBtb3N0IHZpc2li
bHkgaW4gdGhlIGVsZWN0cmljYWwvYW5hbG9nIGFzcGVjdHMgKHNsaWdodGx5Cj4gZGlmZmVyZW50
IGZyZXF1ZW5jaWVzLCB0aW1pbmdzLCBldGMuKS4gVGhpcyByZXN1bHRzIGluIGEgbmVlZCB0byBt
YWtlCj4gdGhlIFBIWSBhd2FyZSBvZiB0aGUgYWN0dWFsIG1vZGUgbmVlZGVkIChhdCBsZWFzdCBp
biB0aGUgUXVhbGNvbW0KPiBpbXBsZW1lbnRhdGlvbiwgYnV0IEkgYmVsaWV2ZSB0aGF0J2xsIGJl
IGEgZ2VuZXJhbCBuZWVkKS4KPiAKPiBOZXdlciB2ZXJzaW9ucyBvZiBUQlQgYXJlIGJhc2ljYWxs
eSBzdXBlcnNldHMgb2YgVVNCNCB3aXRoIGhpZ2hlcgo+IGhvc3Qtc2lkZSByZXF1aXJlbWVudHMs
IHNvIHRoZXNlIGFyZSBub3QgZGVmaW5lZC4gVGhpcyBjYW4gYWx3YXlzIGJlCj4gY2hhbmdlZCBh
cyBuZWNlc3NhcnkuCj4gCj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5i
YXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLb25yYWQgRHliY2lv
IDxrb25yYWQuZHliY2lvQG9zcy5xdWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5h
biBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0g
TWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXg
rq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=

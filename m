Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55695C54E71
	for <linux-phy@archiver.kernel.org>; Wed, 21 May 2025 14:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFEmSU1t3s34VAlGx0ElnZ8wSRsadZoN6HxVcSk4GJk=; b=MTsFdEDZr6/Pzj
	LRE1TjwDtwaPuZeQ9B2qMWrYoFstwRbkXMSl+kl5e3dw/i8jugUpbHON0C3y4jg4yo2v0fWPN2Cv/
	O/44/3I5RKQ/vlwBssF3I0SnCdyoCkRuEGSdsiwCTLvBX2v1B/g81qQFROZAJ02alDKPkCueMjnUJ
	juNXamnZ0ax8uqsUXdg8EKvDoB0N6j0tH+SAqdbGwWNsXlWNKUcjJJEbqT+E9RTJnrVF6zfeFWojg
	WTSoegrnSQrLGXuTy59VsofXKnv3sWSJTExf1tLUMvFfQ876wn3Ln+ZPSC02+90qsLa/VtSYnHrdZ
	8korojzzry3XsUm8g7Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHkCr-0000000G4Ms-0K1l;
	Wed, 21 May 2025 14:14:05 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHjpQ-0000000FzhU-229Q
	for linux-phy@lists.infradead.org;
	Wed, 21 May 2025 13:49:53 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-6f8d663fa22so49734736d6.0
        for <linux-phy@lists.infradead.org>; Wed, 21 May 2025 06:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747835391; x=1748440191; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IKQQl9efsnE2dSsd0cBEgyRG4tNPIDJoQhNLTJui0Rc=;
        b=kVZz4htP/fKXz5v+VFs0Z53r5nkf32y3yueV1Tmn+J+QUdP0Gn03jVaOJ4rFZhGHlx
         7A7Ou2P0sGwn8n/EkXUd6d2TjY+bhV5iiCAmBGSNulWwe4bXuEv8Mmg6u2465u+b5NgW
         SFlIZJTxBvWHz0m2n+GPVJHJqyBTa3y1tWsr6tUOZtn+VeGnGMco6m+JHOP9c/OrFoeb
         y8MKjAhdjSB4PRIsFGudZxypKcOLUf4e6n9qqOJvM0kJWQM2oTw0O8bJvNR9NdwlOBB6
         cisPckZEH6mgSYWCga9LngHM+zrcIMNyR7JEsu3kp5SB4hbx4dFI64gamlsx4MG+E4xG
         Zv+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747835391; x=1748440191;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IKQQl9efsnE2dSsd0cBEgyRG4tNPIDJoQhNLTJui0Rc=;
        b=QDGwjt/ILUpdXVssMUsZDrXpQHsOYA5SAmpKpGtcP5B0b28SChiQphBtUgplOAOQT/
         2LHBRcKngPf+A2wYS+9ZToqoqcu+7Q/gtco+j9OkLOOxdsCWpUUQfD0lz7ufTyXSwpp0
         8lhSRJ/5UD6dlFGx6pcLJDXDOLXpiX8KORsWsqqZsHTOUVwwp5ERJoVNLk3lJUvMBi/T
         vYQPv81kesORQmoFQ+nhud80vUhWTzT71Tiw/imv3xeGnsemnx++3CQckM2ylO4RSSkP
         JwufSZdX/ZSrUTZEQaZNyZjos/ACo4KuBNLCB1okSrDZmZPq28+JN139dKJuR8qjXiQW
         Z9Yg==
X-Forwarded-Encrypted: i=1; AJvYcCXT0ZjdYKvkO0sZb/CDVjz74JR45AyiGaPCYDLm6y7i5Vvqs3ujApnTt5CO1eDkXJvU0zjHDwgjfJo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHagGHdLDpFMgKyi+HRjJtnZY7z1zwrE1iJbmtgB0LhuuHpxzk
	2bRRyNIfRUlytS8IJqyzt9qxF+AZDA6UN5voZG4aFUkYEA7kjPolcLQFHPyqSlYwohPoIfgGfhj
	gBUQ=
X-Gm-Gg: ASbGncvT2zju4m9UfugjvmuwZspZZIKD6wR2zrebNTkONvfp7JzqGHx8NtnnV0ySTcO
	izc0bZR4sJYCmTa+tkmbXyTPAXrRmNz8oHPtdIimVHKsQnQFKQ/X6YkVuX/+O+toGV3efuWK9Er
	6rkzlbuL+z74Cgci+RpS0Fl0QGu68l6sFWfS/CFo95yR7HGfzuy9TkhAGFFFT/fifeGsz0ui4tV
	QoQzBmkq0n5v6AgJL1wylF/BxFhwC7Rnq+bNkYl4yJxiYHG2g8cWoxyQdJvcBitE7z0V0Vm/yPx
	dhaqArM5wiHmkxen3Wua3slh8xWsmRicWMEHFH+FIxek/jDdmomt6QBQ5DXk43kiUxG9U7o=
X-Google-Smtp-Source: AGHT+IEduz9vjVMry3jT75IhTo2z8t5UN2ZLgjoAK3uVpOEwnFvqtCA0jcoE2LOGYXlGmBq0wdD1pg==
X-Received: by 2002:a05:6a20:728e:b0:1f5:7df9:f13c with SMTP id adf61e73a8af0-2170ce3aa79mr30392070637.41.1747835380880;
        Wed, 21 May 2025 06:49:40 -0700 (PDT)
Received: from thinkpad ([120.60.52.42])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b26eb082c66sm9710821a12.60.2025.05.21.06.49.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 06:49:40 -0700 (PDT)
Date: Wed, 21 May 2025 14:49:31 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, bvanassche@acm.org, 
	andersson@kernel.org, neil.armstrong@linaro.org, dmitry.baryshkov@oss.qualcomm.com, 
	konrad.dybcio@oss.qualcomm.com, quic_rdwivedi@quicinc.com, quic_cang@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-scsi@vger.kernel.org
Subject: Re: [PATCH V5 07/11] phy: qcom-qmp-ufs: Remove qmp_ufs_exit() and
 Inline qmp_ufs_com_exit()
Message-ID: <untqxy76skl53c55bdjz5usk4seuypjqbxkfub2qeqz42mewqr@r4cutmkvy235>
References: <20250515162722.6933-1-quic_nitirawa@quicinc.com>
 <20250515162722.6933-8-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250515162722.6933-8-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_064952_524182_603A52C6 
X-CRM114-Status: GOOD (  15.91  )
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

T24gVGh1LCBNYXkgMTUsIDIwMjUgYXQgMDk6NTc6MThQTSArMDUzMCwgTml0aW4gUmF3YXQgd3Jv
dGU6Cj4gcW1wX3Vmc19leGl0KCkgaXMgYSB3cmFwcGVyIGZ1bmN0aW9uLiBJdCBvbmx5IGNhbGxz
IHFtcF91ZnNfY29tX2V4aXQoKS4KPiBSZW1vdmUgaXQgdG8gc2ltcGxpZnkgdGhlIHVmcyBwaHkg
ZHJpdmVyLgo+IAoKT2theSwgc28geW91IGFyZSBkb2luZyBpdCBub3cuLi4KCj4gQWRkaXRvbmFs
bHkgcGFydGlhbCBJbmxpbmUoZHJvcHBpbmcgdGhlIHJlc2V0IGFzc2VydCkgcW1wX3Vmc19jb21f
ZXhpdAo+IGludG8gcW1wX3Vmc19wb3dlcl9vZmYgZnVuY3Rpb24gdG8gYXZvaWQgdW5uZWNlc3Nh
cnkgZnVuY3Rpb24gY2FsbC4KPiAKCldoeSBhcmUgeW91IGRyb3BwaW5nIHRoZSByZXNldF9hc3Nl
cnQoKT8KCj4gU2lnbmVkLW9mZi1ieTogTml0aW4gUmF3YXQgPHF1aWNfbml0aXJhd2FAcXVpY2lu
Yy5jb20+Cj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZA
b3NzLnF1YWxjb21tLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20t
cW1wLXVmcy5jIHwgMTkgKysrKystLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5
LXFjb20tcW1wLXVmcy5jCj4gaW5kZXggYTU5NzRhMWZiNWJiLi5mY2E0N2U1ZThiZjAgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gKysrIGIv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXVmcy5jCj4gQEAgLTE3NTgsMTkgKzE3
NTgsNiBAQCBzdGF0aWMgdm9pZCBxbXBfdWZzX2luaXRfcmVnaXN0ZXJzKHN0cnVjdCBxbXBfdWZz
ICpxbXAsIGNvbnN0IHN0cnVjdCBxbXBfcGh5X2NmZwo+ICAJCXFtcF91ZnNfaW5pdF9hbGwocW1w
LCAmY2ZnLT50YmxzX2hzX2IpOwo+ICB9Cj4gIAo+IC1zdGF0aWMgaW50IHFtcF91ZnNfY29tX2V4
aXQoc3RydWN0IHFtcF91ZnMgKnFtcCkKPiAtewo+IC0JY29uc3Qgc3RydWN0IHFtcF9waHlfY2Zn
ICpjZmcgPSBxbXAtPmNmZzsKPiAtCj4gLQlyZXNldF9jb250cm9sX2Fzc2VydChxbXAtPnVmc19y
ZXNldCk7Cj4gLQo+IC0JY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocW1wLT5udW1fY2xrcywg
cW1wLT5jbGtzKTsKPiAtCj4gLQlyZWd1bGF0b3JfYnVsa19kaXNhYmxlKGNmZy0+bnVtX3ZyZWdz
LCBxbXAtPnZyZWdzKTsKPiAtCj4gLQlyZXR1cm4gMDsKPiAtfQo+IC0KPiAgc3RhdGljIGludCBx
bXBfdWZzX3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBoeSkKPiAgewo+ICAJc3RydWN0IHFtcF91ZnMg
KnFtcCA9IHBoeV9nZXRfZHJ2ZGF0YShwaHkpOwo+IEBAIC0xODUxLDcgKzE4MzgsMTEgQEAgc3Rh
dGljIGludCBxbXBfdWZzX3Bvd2VyX29mZihzdHJ1Y3QgcGh5ICpwaHkpCj4gIAlxcGh5X2NscmJp
dHMocW1wLT5wY3MsIGNmZy0+cmVnc1tRUEhZX1BDU19QT1dFUl9ET1dOX0NPTlRST0xdLAo+ICAJ
CQlTV19QV1JETik7Cj4gIAo+IC0JcW1wX3Vmc19jb21fZXhpdChxbXApOwo+ICsJLyogVHVybiBv
ZmYgYWxsIHRoZSBwaHkgY2xvY2tzICovCgpZb3Ugc2hvdWxkIGRyb3AgdGhpcyBhbmQgYmVsb3cg
Y29tbWVudC4gVGhleSBhZGQgbm8gdmFsdWUuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPg
r43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

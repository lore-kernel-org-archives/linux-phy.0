Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2A36C3DA6E
	for <linux-phy@archiver.kernel.org>; Wed, 20 Dec 2023 08:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vN/GSMGEarfHUceAbGOIRrqBC6iqFyGR9uzpec646xE=; b=WRvLxnp6aZnoXR
	U606vdmwSsGBNHYkGGFtbEq3dwXyojS22MmUBcbLe27ustGWI+EocNwxf7uiALOa1kEpMqt/ebAaN
	OjO35Ln/M/YFyPKxUn77gjNs0Qf+i0oc3hKNwi718T4J66KN/oPYjsizycnrSIeDUHwC4ewA3IwM4
	1lNEDqor2TFYCmL2tB9L7F4m12sDj5EEVRru/Ab5XWcUNHWuMKcGhsv69SrA2igSQZ+CU+OIzJlEf
	1EJ/LXCqw/5ZeWKdPsiXR4ncANVJUut+YvTKLEXiEm8fIkyUGBH8Z78jarNoImKBmWjcGH4jPY66P
	fvQOsH7iVdWkVlfks+9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFryJ-00GaB6-1W;
	Wed, 20 Dec 2023 08:30:31 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFryG-00Ga9C-0y
	for linux-phy@lists.infradead.org;
	Wed, 20 Dec 2023 08:30:29 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id 6a1803df08f44-67f296ecb2dso4056806d6.0
        for <linux-phy@lists.infradead.org>; Wed, 20 Dec 2023 00:30:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703061025; x=1703665825; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1Hp6hDzkalXVHzwngj1E6hzkyPfyrhHPSKm/09FW//U=;
        b=wdSEn+48+MEk02xmvNDe1Ow2JB/sLl1sOUJSb2NyJwMPerGUG3lMvvsv2TUFdE6ReY
         BQkVEViK2hR33K98HGmS1J+J0kb/26Bmzuer1U7SyX7eLQHJhTjVSIjeqtqu/N1fwhS1
         Tfhp8lhLirrKvh7mKCojLV7DntxMEb7Ly5JF2MFqm7EjEQJzDtHf2amnok470OGBawUb
         lJqkNhDOkI0rAGt+gJb8bkKyulULLe4ZZ3qRxGXs+VuabzfCR6KlJh9Vm/g5XQCvgjV3
         4uhGNcXk/nxT7bVW0Npl0VPucfdJuI30YAt0THxcc4V2lBhp0iLSpIKr7hHomgqtXLa3
         An+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703061025; x=1703665825;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1Hp6hDzkalXVHzwngj1E6hzkyPfyrhHPSKm/09FW//U=;
        b=gBITe9x7cMSn/ZgfWobrFJIoCZ8o9WUQYvCSRiYIXffVlwzOelfXu4jLhfQpsO+s+t
         aI5Y7CBc+p4bOeIKIVEC0TSxgDXlRH2uWWYal9Bf6znHB7b8/7+PFLvR3JvwrrtufLGA
         VzmLHQLwcKbvP3pJKqocOFJ6z9K3MBKEaXhTyR2IfAjGSBgHkmSKzmKAbvrDHPeflVGM
         gJeUvVjbv483HECiwJf5JQtIv/TZtAMxIbKgKPolleBzJlbEtNqsIxMmNMx2PK/zN5R0
         yzfc8na4mBJY5mCXgVdloC/py42mAHsEfDwwf+HJNDjnvrHmId2EbUwm27ev4jpIJzwc
         ZfOA==
X-Gm-Message-State: AOJu0YxejwxxwXi/PzFgDSpJj8iMLchp4wbnSybliZaMXo/hkOCxAKYG
	tIWgsCcHKEIyzjAEoXkrgGwL
X-Google-Smtp-Source: AGHT+IFNevoZVeM1/edc6wy5TXyKSe8NyJmPi6C99OU7tYcOeZmMpqFAymznJYajCZJ9JJkwWkRivA==
X-Received: by 2002:ad4:5aac:0:b0:67f:1ba0:5be8 with SMTP id u12-20020ad45aac000000b0067f1ba05be8mr4253954qvg.55.1703061025183;
        Wed, 20 Dec 2023 00:30:25 -0800 (PST)
Received: from thinkpad ([117.217.177.154])
        by smtp.gmail.com with ESMTPSA id p12-20020ad45f4c000000b0067f19dce377sm4759432qvg.30.2023.12.20.00.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Dec 2023 00:30:24 -0800 (PST)
Date: Wed, 20 Dec 2023 14:00:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: andersson@kernel.org, vkoul@kernel.org, sboyd@kernel.org,
	mturquette@baylibre.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, quic_cang@quicinc.com
Subject: Re: [PATCH v2 14/16] arm64: dts: qcom: sc8280xp: Fix UFS PHY clocks
Message-ID: <20231220083014.GB3544@thinkpad>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
 <20231218120712.16438-15-manivannan.sadhasivam@linaro.org>
 <e905c463-6f89-4939-981a-7a360ed31669@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e905c463-6f89-4939-981a-7a360ed31669@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_003028_341971_456F7A8D 
X-CRM114-Status: GOOD (  15.02  )
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

T24gV2VkLCBEZWMgMjAsIDIwMjMgYXQgMDE6MzU6MjdBTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAxOC4xMi4yMDIzIDEzOjA3LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6
Cj4gPiBRTVAgUEhZIHVzZWQgaW4gU0M4MjgwWFAgcmVxdWlyZXMgMyBjbG9ja3M6Cj4gPiAKPiA+
ICogcmVmIC0gMTkuMk1IeiByZWZlcmVuY2UgY2xvY2sgZnJvbSBSUE1oCj4gPiAqIHJlZl9hdXgg
LSBBdXhpbGlhcnkgcmVmZXJlbmNlIGNsb2NrIGZyb20gR0NDCj4gPiAqIHFyZWYgLSBRUkVGIGNs
b2NrIGZyb20gR0NDCj4gPiAKPiA+IEZpeGVzOiAxNTJkMWZhZjFlMmYgKCJhcm02NDogZHRzOiBx
Y29tOiBhZGQgU0M4MjgwWFAgcGxhdGZvcm0iKQo+ID4gU2lnbmVkLW9mZi1ieTogTWFuaXZhbm5h
biBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KPiA+IC0tLQo+
ID4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC5kdHNpIHwgMTggKysrKysrKysr
KysrLS0tLS0tCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDYgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc2M4
MjgweHAuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC5kdHNpCj4gPiBp
bmRleCBjYWQ1OWFmN2NjZWYuLjM3MzQ0YWJiZThiZiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcWNvbS9zYzgyODB4cC5kdHNpCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3Fjb20vc2M4MjgweHAuZHRzaQo+ID4gQEAgLTIyNTYsOSArMjI1NiwxMiBAQCB1ZnNfbWVt
X3BoeTogcGh5QDFkODcwMDAgewo+ID4gIAkJCWNvbXBhdGlibGUgPSAicWNvbSxzYzgyODB4cC1x
bXAtdWZzLXBoeSI7Cj4gPiAgCQkJcmVnID0gPDAgMHgwMWQ4NzAwMCAwIDB4MTAwMD47Cj4gPiAg
Cj4gPiAtCQkJY2xvY2tzID0gPCZnY2MgR0NDX1VGU19DQVJEX0NMS1JFRl9DTEs+LAo+ID4gLQkJ
CQkgPCZnY2MgR0NDX1VGU19QSFlfUEhZX0FVWF9DTEs+Owo+ID4gLQkJCWNsb2NrLW5hbWVzID0g
InJlZiIsICJyZWZfYXV4IjsKPiA+ICsJCQljbG9ja3MgPSA8JnJwbWhjYyBSUE1IX0NYT19DTEs+
LAo+ID4gKwkJCQkgPCZnY2MgR0NDX1VGU19QSFlfUEhZX0FVWF9DTEs+LAo+ID4gKwkJCQkgPCZn
Y2MgR0NDX1VGU19DQVJEX0NMS1JFRl9DTEs+Owo+IEdDQ19VRlNfUkVGX0NMS1JFRl9DTEsKCkkn
bSBub3Qgc3VyZSBhYm91dCB0aGlzIENMSy4gU28gSSBrZXB0IGl0IGFzIGl0IGlzIHVudGlsIEkg
dmVyaWZ5IGl0LgoKLSBNYW5pCgo+IAo+ID8KPiAKPiBLb25yYWQKCi0tIArgrq7grqPgrr/grrXg
rqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

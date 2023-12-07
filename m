Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7F48AC4167B
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 10:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3TNMY81O2Tvu2CHfoltqudKtc3d54BSJDcwgfVdJi/A=; b=WKCN8TJp7NQwV5
	TjyQhXoar+mhH7ITLN/a7jZsi6tFZ7wzc9M6+m3t97QpD5VRGIhLr12x4iizzY9x3hBiHYqVqpGFW
	3NJOdDZ17fFxOtxGLMSm/y+zS8KZANBkneAGcIn5sgBdTEsKczuPkv8KZ2XOC/FP+IP9LroYSKL64
	ybaUlogefq+CV8UG4p0EERJpsy20IPfZ5Gk7uBVfcSoKIk9/PzsN+hXD93n7Xw7HuUwZ0I2x542j1
	J34SW/U7Bte9/XxrC1P3rVy6N8M2D5b0x1j+7GDBrOYeN6OfmUIAl65y0OqpKrtwbxzCHRLaYvdst
	IcNdFsOCTcLKlp1ToDVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBBNT-00CRy8-0e;
	Thu, 07 Dec 2023 10:13:07 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBBNR-00CRxY-1A
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 10:13:06 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-db544987c79so786100276.2
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 02:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701943984; x=1702548784; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=e3B67B1TYSjUdt6Cc8K4XbRIZ1QzqkY0WH6+puDGmn4=;
        b=dXw+n6yCo9tYMN1CyTXTUe0QN+eYCe4VixFT4QsIWlS1uHDnApnyqBVyNI6BZI6Ify
         t5pcpE7F4YPO19zYmhLnEEx2PVaGfQspha+gSyxl20S8cpOj4LuhqSotpTVSNMKIXxGw
         i7tsGPvIPsc7gvXqRqV7MFodZIRzAfqFY36Khk1WyaeOZwUsFPFyJ0z0ngyT4hMo4Aev
         TkSgSsOjry86GswtQtO7RdQ7emulSeKM+g+csXbCPuYiyNc7GCxesbB0jHohjhed08Gl
         gAVtCMULvhE03kjgzAdtjF4Kay8vzKfJd/7APTNvx6UT+0/EKcYa2TlEoU4Kp83mJAPi
         T/iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701943984; x=1702548784;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e3B67B1TYSjUdt6Cc8K4XbRIZ1QzqkY0WH6+puDGmn4=;
        b=Hy/OmgxwO9cQ58uL/upGwPxjfIF9vu73j9t9eqDapa28ebtBIgsZe3sYbY5urVCaT6
         gxp9KOt7/ugY4QB/DCcsiNPggV2huabYz0EpLXcyVcKWIq3JePSIDqOWQBemtBzDQu3e
         8JDx9Qza+ejdTW93z0/vNFnTb6125VAhwY5Ik9FrOs460+5VclaLibTNYFvMU2vMl/mp
         3SL6PnF2V+2WpdDCiF90BTUjOXCWOme8ngdchdoZirpaLsBQbaefFmet+ftQROrmmhZu
         krK2F4I7o4wgEUCIBrlMjVrY/zWiE15I4Wp9OpDq793ytLZ6wGdTm+NVX64Sps2zQCqf
         fyKw==
X-Gm-Message-State: AOJu0YzK2QVlfcd9TaiDopRwmuf6evWixze28df4/Nr4xcxY/p18imku
	/7OEuTmTKLpbbES+7X4gQHvG
X-Google-Smtp-Source: AGHT+IFNn1HUFDtLCOGTeA3m9Ta/i3bQvpYxwVgKKLYlxLDmi9pfv/W/T/9B2nxE7SkRSL3QSWQJtw==
X-Received: by 2002:a25:243:0:b0:db5:4503:6de5 with SMTP id 64-20020a250243000000b00db545036de5mr1932607ybc.60.1701943983997;
        Thu, 07 Dec 2023 02:13:03 -0800 (PST)
Received: from thinkpad ([117.248.6.133])
        by smtp.gmail.com with ESMTPSA id l13-20020a0cc20d000000b0067a22bb8d57sm373453qvh.56.2023.12.07.02.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 02:13:03 -0800 (PST)
Date: Thu, 7 Dec 2023 15:42:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <20231207101252.GJ2932@thinkpad>
References: <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
 <20231201060716.GJ4009@thinkpad>
 <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
 <20231206131009.GD12802@thinkpad>
 <ZXGVjY9gYMD6-xFJ@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZXGVjY9gYMD6-xFJ@hovoldconsulting.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_021305_401796_C08BCAEC 
X-CRM114-Status: GOOD (  12.80  )
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

T24gVGh1LCBEZWMgMDcsIDIwMjMgYXQgMTA6NTE6MDlBTSArMDEwMCwgSm9oYW4gSG92b2xkIHdy
b3RlOgo+IE9uIFdlZCwgRGVjIDA2LCAyMDIzIGF0IDA2OjQwOjA5UE0gKzA1MzAsIE1hbml2YW5u
YW4gU2FkaGFzaXZhbSB3cm90ZToKPiAKPiA+IE9LLiBIb3cgYWJvdXQsICJxY29tLGJyb2tlbi1y
ZWZjbGsiPyBUaGlzIHJlZmxlY3RzIHRoZSBmYWN0IHRoYXQgdGhlIGRlZmF1bHQKPiA+IHJlZmNs
ayBvcGVyYXRpb24gaXMgYnJva2VuIG9uIHRoaXMgcGxhdGZvcm0sIHNvIHRoZSBPUyBzaG91bGQg
YmUgcHJlcGFyZWQgZm9yCj4gPiBpdCAoYnkga2VlcGluZyBpdCBhbHdheXMgb24pLgo+IAo+IFNo
b3VsZG4ndCB0aGF0IGJlCj4gCj4gCXFjb20sYnJva2VuLWNsa3JlcQo+IAo+IHNpbmNlIGl0cyB0
aGUgQ0xLUkVRIyBzaWduYWwgdXNlZCB0byByZXF1ZXN0IFJFRkNMSyB0aGF0IGlzIGJyb2tlbiwg
bm90Cj4gdGhlIFJFRkNMSyBpdHNlbGY/Cj4gCgpEYXJuLi4uIFlvdSBhcmUgcmlnaHQuIEkgZ290
IGNhcnJpZWQgYXdheSBieSB0aGUgaW5pdGlhbCBwcm9wZXJ0eSBuYW1lLiBUaGFua3MKZm9yIHNw
b3R0aW5nIQoKLSBNYW5pCgo+IEpvaGFuCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+N
IOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==

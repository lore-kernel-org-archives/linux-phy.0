Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BBDA1C021B5
	for <linux-phy@archiver.kernel.org>; Mon, 24 Feb 2025 13:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4GEEdDl67om3Wo9Ude6mdDZVcGOckcUnBF8k5hlnlI=; b=INEThKnUyHdAJ5
	DjjoJF0c1rB4fkG+GuKGxGCr6vyVNBSitXRz+BaAcwEItjeVexJQB9F/WLHVGc9T/f4JcB8HbLoQL
	3RmeDuTTBNr8WloyaP1tr6Q8tjH+61RabBr3rGcleLi5CiEv4KXekhpStSDXi3q+g3laYuCNJY5c8
	MPPVfIf0tRRiLqo2G0YWDerYowSSLjo88CiqzA12gJpPZVc3ZNxiem8ubTiY5em+duf7SHsy4l979
	xz56QpZ4qYLXOJF3aqH1QpP2K0GfR+bGoAG3toHz2baZnhQVHQng4G+iZjR7Jnlj985uaihOI85hd
	Y6sqfbhBI25njWjlI9MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmYHk-0000000DniF-1MH1;
	Mon, 24 Feb 2025 13:14:12 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmXVw-0000000DgKS-2Pjp
	for linux-phy@lists.infradead.org;
	Mon, 24 Feb 2025 12:24:49 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2fa5af6d743so6602617a91.3
        for <linux-phy@lists.infradead.org>; Mon, 24 Feb 2025 04:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740399887; x=1741004687; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CzOuuE5AQmIPlvYyxq7yqi7h09eNAtPB9O3gjrpeReo=;
        b=qtc5uQtE8pf5kOsfdDyPCcYxod9b6iqA2E6YPf+SdV/JJpLIh2kmNOs1L6C6RZnLlt
         SF8moto8nA+1Sop7ogmc9b3oFE29FKqdUacXDzpn5pbJrpePSDJSjHR+zGBtBW1Cjvbk
         dVGv6MNAfSDxkoMKibhxhzfzbiPPtapWC5HrKR1YmVwEM9Pjic9VhSXoS6EprbDPtLCG
         VqZ3ZibapvOdVW+dm3WDmaVsX+A/FGmqn5kCBDK2xNjwYxLjoi3UDIoH6jQ8Sby8APMF
         GWlGLmnunGpL++O8E2l59mYSnCG/tF72nDbfgPnQ5DNpIVos1dDQfoXMdkt1zqzM6yaY
         xL4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740399887; x=1741004687;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CzOuuE5AQmIPlvYyxq7yqi7h09eNAtPB9O3gjrpeReo=;
        b=m7NuFK9mReOWFS7rSQJmzJr+CkIWP0ms+Y2u5iS20hSG6fwLtBo+Y/LsYoIW8BUejz
         7cfxFEFZ7pKxxCKAgQ2o62WK+f303/10NPnnvIP//y/wVqpJFuc9cHUKS1Yo+VGnW2b3
         v062Z+8lO1xCsnl/Hl2LIOjXNngSWz8zASBAZOAo1WdTZez5TeMOOT4bsGkIsmT5IGBT
         aHAdxyqeukXhsH4HpdsEq9+AcOrbC2F5h/KTmdxjRD2BKNQfMir/aWohRRTr6UQIYEl9
         BOxQIz4WY3hycRHFkgiskQ5OskSFO99fjhLYbInahFeyFAI33BUxbt5Ih2xWoIHwb6VA
         X/XA==
X-Forwarded-Encrypted: i=1; AJvYcCWuErXps5yFoQBhwX9bqOMWC2MkUME2NqCZwlYaZW0nZOZq9cP/TdOY635b2pOHtVpPo2MPI14XWIc=@lists.infradead.org
X-Gm-Message-State: AOJu0YxG7YHeNVzyBLu89Z2jfnEzMJ6F5519CLYLuO6fnNrDDf57bqvT
	+ZnOe/hsCy1EFe2bbAwIG5a+YCAKoV85D040aZeZzVcAxeeDLJST24c9NWUXPQ==
X-Gm-Gg: ASbGncv/yxIATNjKHMolxYcEDxO4uSlEJc0fZPSbmJT56MtkSpcUfkMLL9LQdoNLqJh
	v8zYr8HsUGEQIM7njkFxPV/IEMd9xN2iuE1u6/+zOsGP/udn1S6N8DE/Rj0JeV2sbzS7Rk92TtC
	FRPJCL/yU1Y6xME/1iGcirbI7+1CTj85OOEuh+ipWuFYBak1iojE9dhgtPUsedox9CSpgvH9zAI
	7eG4tjefvBHW7AKOe1Zl2iXR2pYM1fk9QPPZKqMiPGSYIywg7EGXt3ce3i2lgbGjm9YD1gjdtd3
	PcghYcEfY5xtNEVvIpbCr602EI4Edrar1ImP
X-Google-Smtp-Source: AGHT+IH/w00sFYxAQuhzHVocmdDGxR/sR2j2LN3gKicNu564R2XT9+1VYMvG9GP5RbWPILjxrB+JCQ==
X-Received: by 2002:a17:90b:53ce:b0:2f6:d266:f45e with SMTP id 98e67ed59e1d1-2fce789de66mr23281750a91.2.1740399887600;
        Mon, 24 Feb 2025 04:24:47 -0800 (PST)
Received: from thinkpad ([36.255.17.202])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-adb57c5ea71sm18865435a12.8.2025.02.24.04.24.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 04:24:47 -0800 (PST)
Date: Mon, 24 Feb 2025 17:54:39 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
	kishon@kernel.org, p.zabel@pengutronix.de,
	dmitry.baryshkov@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, neil.armstrong@linaro.org,
	quic_devipriy@quicinc.com, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
Message-ID: <20250224122439.njrcoyrfsisddoer@thinkpad>
References: <20250220102253.755116-1-quic_wenbyao@quicinc.com>
 <20250220102253.755116-3-quic_wenbyao@quicinc.com>
 <20250224073301.aqbw3gxjnupbejfy@thinkpad>
 <7ffb09cd-9c77-4407-9087-3e789cd8bf44@quicinc.com>
 <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea5de507-1252-4ff3-9b18-40981624afea@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250224_042448_626374_2AD743E3 
X-CRM114-Status: GOOD (  20.46  )
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

T24gTW9uLCBGZWIgMjQsIDIwMjUgYXQgMTI6NDY6NDRQTSArMDEwMCwgS29ucmFkIER5YmNpbyB3
cm90ZToKPiBPbiAyNC4wMi4yMDI1IDk6NDYgQU0sIFdlbmJpbiBZYW8gKENvbnN1bHRhbnQpIHdy
b3RlOgo+ID4gT24gMi8yNC8yMDI1IDM6MzMgUE0sIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90
ZToKPiA+PiBPbiBUaHUsIEZlYiAyMCwgMjAyNSBhdCAwNjoyMjo1M1BNICswODAwLCBXZW5iaW4g
WWFvIHdyb3RlOgo+ID4+PiBGcm9tOiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5jb20+
Cj4gPj4+Cj4gPj4+IFNvbWUgUUNPTSBQQ0llIFBIWXMgc3VwcG9ydCBub19jc3IgcmVzZXQuIFVu
bGlrZSBCQ1IgcmVzZXQgd2hpY2ggcmVzZXRzIHRoZQo+ID4+PiB3aG9sZSBQSFkgKGhhcmR3YXJl
IGFuZCByZWdpc3RlciksIG5vX2NzciByZXNldCBvbmx5IHJlc2V0cyBQSFkgaGFyZHdhcmUKPiA+
Pj4gYnV0IHJldGFpbnMgcmVnaXN0ZXIgdmFsdWVzLCB3aGljaCBtZWFucyBQSFkgc2V0dGluZyBj
YW4gYmUgc2tpcHBlZCBkdXJpbmcKPiA+Pj4gUEhZIGluaXQgaWYgUENJZSBsaW5rIGlzIGVuYWJs
ZWQgaW4gYm9vbHRsb2FkZXIgYW5kIG9ubHkgbm9fY3NyIGlzIHRvZ2dsZWQKPiA+Pj4gYWZ0ZXIg
dGhhdC4KPiA+Pj4KPiA+Pj4gSGVuY2UsIGRldGVybWluZSB3aGV0aGVyIHRoZSBQSFkgaGFzIGJl
ZW4gZW5hYmxlZCBpbiBib290bG9hZGVyIGJ5Cj4gPj4+IHZlcmlmeWluZyBRUEhZX1NUQVJUX0NU
UkwgcmVnaXN0ZXIuIElmIGl0J3MgcHJvZ3JhbW1lZCBhbmQgbm9fY3NyIHJlc2V0IGlzCj4gPj4+
IGF2YWlsYWJsZSwgc2tpcCBCQ1IgcmVzZXQgYW5kIFBIWSByZWdpc3RlciBzZXR0aW5nIHRvIGVz
dGFibGlzaCB0aGUgUENJZQo+ID4+PiBsaW5rIHdpdGggYm9vdGxvYWRlciAtIHByb2dyYW1tZWQg
UEhZIHNldHRpbmdzLgo+ID4+Pgo+ID4+PiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19x
aWFueXVAcXVpY2luYy5jb20+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFdlbmJpbiBZYW8gPHF1aWNf
d2VuYnlhb0BxdWljaW5jLmNvbT4KPiA+PiBTb21lIG5pdHBpY2tzIGJlbG93Lgo+ID4+Cj4gPj4+
IC0tLQo+IAo+IFsuLi5dCj4gCj4gPj4KPiA+Pj4gK8KgwqDCoMKgICogSW4gdGhpcyB3YXksIG5v
IG1hdHRlciB3aGV0aGVyIHRoZSBQSFkgc2V0dGluZ3Mgd2VyZSBpbml0aWFsbHkKPiA+Pj4gK8Kg
wqDCoMKgICogcHJvZ3JhbW1lZCBieSBib290bG9hZGVyIG9yIFBIWSBkcml2ZXIgaXRzZWxmLCB3
ZSBjYW4gcmV1c2UgdGhlbQo+ID4+IEl0IGlzIHJlYWxseSBwb3NzaWJsZSB0byBoYXZlIGJvb3Rs
b2FkZXIgbm90IHByb2dyYW1taW5nIHRoZSBpbml0IHNlcXVlbmNlIGZvcgo+ID4+IG5vX2NzciBy
ZXNldCBwbGF0Zm9ybXM/IFRoZSBjb21tZW50IHNvdW5kcyBsaWtlIGl0IGlzIHBvc3NpYmxlLiBC
dXQgSSBoZWFyZCB0aGUKPiA+PiBvcHBvc2l0ZS4KPiA+IAo+ID4gUENJZTMgb24gWDFFODAxMDAg
UUNQIGlzIGRpc2FibGVkIGJ5IGRlZmF1bHQgaW4gVUVGSS4gV2UgbmVlZCB0byBlbmFibGUgaXQK
PiA+IG1hbnVhbGx5IGluIFVFRkkgc2hlbGwgaWYgd2Ugd2FudC4KPiAKPiBJSVVDIHRoaXMgd2ls
bCBub3QgYmUgYSBjb25jZXJuIGdvaW5nIGZvcndhcmQsIGFuZCB0aGlzIGlzIGEgc3BlY2lhbCBj
YXNlCj4gCgpJJ20gd29uZGVyaW5nIGhvdyBtYW55ICpzcGVjaWFsKiBjYXNlcyB3ZSBtYXkgaGF2
ZSB0byBkZWFsIHdpdGggZ29pbmcgZm9yd2FyZC4KQW55aG93LCBJIHdvdWxkIHByb3Bvc2UgdG8g
YXRsZWFzdCB0aHJvdyBhbiBlcnJvciBhbmQgZmFpbCBwcm9iZSgpIGlmOgoKKiB0aGUgcGxhdGZv
cm0gaGFzIG5vX2NzciByZXNldCBBTkQKKiBib290bG9hZGVyIGhhcyBub3QgaW5pdGlhbGl6ZWQg
dGhlIFBIWSBBTkQKKiB0aGVyZSBhcmUgbm8gaW5pdCBzZXF1ZW5jZXMgaW4gdGhlIGtlcm5lbAoK
LSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+Cu
teCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==

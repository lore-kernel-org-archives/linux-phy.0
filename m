Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5FA6FA3755
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 13:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXqo8C0hV3sXPgnUIo/vgmy2M+WaxsjugOpnxReZaR0=; b=yYGL8+QWbPPIvj
	cm9Riy2XFvdO/I5YsqrDUZQy8aARUAu+mT3vR7imYHTWQ3iORCTAnL6jCUQs4qPMRHktg7L/Fqwa4
	JpbJioZtltoiHKwQRiMn7NpQu/gBr/RnEjdTCtYJtcyQMSSJyATmccmA8sjkuK/6ghngr2EMWDh+H
	ofRmaBIca4saQrGFRX2xDJQ1pV9UnQi3v+qBWz1Tr836Sc4JXSvCVJoMSa8tS40RcrYEJcHw4CfL0
	GAHlF/l3O22tcCotAFM0eyv801ldor0AYznOupb8SEwKrVjLBKP+scLpfQX1kAXekpEkvbJjIL+UL
	mapROwyNuDpKm4um7+gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp6Tf-0000000G3EA-1GMQ;
	Fri, 13 Sep 2024 13:36:47 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp6TX-0000000G3AE-2JgY
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 13:36:41 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-7163489149eso705630a12.1
        for <linux-phy@lists.infradead.org>; Fri, 13 Sep 2024 06:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726234598; x=1726839398; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yV+qXor6MhUiKRp/uAsEkmn8ZDHW0/20wv7wV43QfmY=;
        b=DIwZEsBuVtFW9+fgsWodets9ZGnjnbFwtu6NTtMwYrzGl2NTFxzmG6KIMhxhJ4Orbl
         0430spuRLnVIsUF0gc2BD4Kiod9qbu4iDpX/DWy6Q4cGJCQB32cHOrp0DPWX4YRpnGWZ
         hTMFWKDlZvCnuCcfUKE7JY9suAnJ/jEMC3e7u93Rh/op4daJzrxtgXKPFvJQnKbvFdsW
         cjCdAKvw3H1K1V/gnQNx7RpEG1IjEdbSJUR33Mlz/YXc/awnqy3yzVm3CJOzbxKrUwXU
         bgx02vWBdX4MDAp7VfRBlBULgGn+UzfO5X7dpxGyOyP3uYqlYXXnz8uuukrvdCnw0fJ9
         F2pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726234598; x=1726839398;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yV+qXor6MhUiKRp/uAsEkmn8ZDHW0/20wv7wV43QfmY=;
        b=QXVKuyNnuQvhSn9nh031qoAJP7mtxlxdbVThgxJZ4itknHolauFUZoYWS/wVHEXXL2
         fPpDCflONSTdGpxwri77TzRybLrxMdgCH7LQtHlPOGjP+soFa2nisdrLbgLEPjklkSYD
         uXGyiL6VtaR1zxwhAUo/KQ9lw5BuJBVm1+0smdtr44xujV2tbMZycJLHJyhcKGtTV9Jd
         bZtYHQag4cZhqUZs5Cp7H0L/kXdqtEKYdJW5f2jHZd1RIle8yfMwAxm/YQUCuwYvP2Uf
         e6Z7gy4jaIG6kzMqm6OrLDf/2K4bQ3Rmcv68O4OXDrHIeruKxvBSQI+dGzgbUDDxuCKH
         5WWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWdh+U3QpbJRFKJWsobbbHHjZdtzIE2BPanAlu5uKfQG0wmumkmsYCXJxlYzunrnq43Uzj78gdc29c=@lists.infradead.org
X-Gm-Message-State: AOJu0YzynxhQOMrzpyHaFZPy1Aaux5jWe7549F9QYwY5gGG7uuErkhoT
	oeRduGohlmoLD/6lx/Ud6Y52dV6xfbiLbCsSTSaebbYNPD74TogbV1P8bczx/w==
X-Google-Smtp-Source: AGHT+IFcp2jTl5mrKJuFCPH6264r7HZB1RvFjZQoHrVr3k/nmvKN3GCesQlgt2QE0HCgz4564DsufA==
X-Received: by 2002:a05:6a21:6481:b0:1cf:539c:56f0 with SMTP id adf61e73a8af0-1d112eaf2eemr4459577637.47.1726234598009;
        Fri, 13 Sep 2024 06:36:38 -0700 (PDT)
Received: from thinkpad ([120.60.66.60])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7190909226fsm6286989b3a.98.2024.09.13.06.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 06:36:37 -0700 (PDT)
Date: Fri, 13 Sep 2024 19:06:19 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Qiang Yu <quic_qianyu@quicinc.com>, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, kw@linux.com, lpieralisi@kernel.org,
	neil.armstrong@linaro.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: PCI: qcom: Add OPP table for X1E80100
Message-ID: <20240913133619.z7cc4whhpvs2uecb@thinkpad>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-3-quic_qianyu@quicinc.com>
 <tf4z475uqjenohdgqj4ltoty3j3gopxnbdhrrn6zo3ug5yuvyq@us2nysv2ggxh>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tf4z475uqjenohdgqj4ltoty3j3gopxnbdhrrn6zo3ug5yuvyq@us2nysv2ggxh>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_063639_632494_B13C047F 
X-CRM114-Status: GOOD (  18.65  )
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

T24gRnJpLCBTZXAgMTMsIDIwMjQgYXQgMDM6MzA6NTlQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiBGcmksIFNlcCAxMywgMjAyNCBhdCAwMTozNzoyMUFNIEdNVCwgUWlhbmcg
WXUgd3JvdGU6Cj4gPiBBZGQgT1BQIHRhYmxlIHNvIHRoYXQgUENJZSBpcyBhYmxlIHRvIGFkanVz
dCBwb3dlciBkb21haW4gcGVyZm9ybWFuY2UKPiA+IHN0YXRlIGFuZCBJQ0MgcGVhayBidyBhY2Nv
cmRpbmcgdG8gUENJZSBnZW4gc3BlZWQgYW5kIGxpbmsgd2lkdGguCj4gPiAKPiA+IFNpZ25lZC1v
ZmYtYnk6IFFpYW5nIFl1IDxxdWljX3FpYW55dUBxdWljaW5jLmNvbT4KPiA+IC0tLQo+ID4gIERv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcWNvbSxwY2llLXgxZTgwMTAwLnlh
bWwgfCA0ICsrKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCj4gPiAKPiA+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20s
cGNpZS14MWU4MDEwMC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bj
aS9xY29tLHBjaWUteDFlODAxMDAueWFtbAo+ID4gaW5kZXggYTlkYjBhMjMxNTYzLi5lMmQ2NzE5
Y2E1NGQgMTAwNjQ0Cj4gPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGNpL3Fjb20scGNpZS14MWU4MDEwMC55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvcGNpL3Fjb20scGNpZS14MWU4MDEwMC55YW1sCj4gPiBAQCAtNzAsNiAr
NzAsMTAgQEAgcHJvcGVydGllczoKPiA+ICAgICAgICAtIGNvbnN0OiBwY2kgIyBQQ0llIGNvcmUg
cmVzZXQKPiA+ICAgICAgICAtIGNvbnN0OiBsaW5rX2Rvd24gIyBQQ0llIGxpbmsgZG93biByZXNl
dAo+ID4gIAo+ID4gKyAgb3BlcmF0aW5nLXBvaW50cy12MjogdHJ1ZQo+ID4gKyAgb3BwLXRhYmxl
Ogo+ID4gKyAgICB0eXBlOiBvYmplY3QKPiAKPiBJIHRoaW5rIHRoZXNlIHByb3BlcnRpZXMgYXJl
IGdlbmVyaWMgZW5vdWdoIGFuZCB3ZSBtaWdodCB3YW50IHRvIGhhdmUKPiB0aGVtIGZvciBtb3N0
IGlmIG5vdCBhbGwgcGxhdGZvcm1zLiBNYXliZSB3ZSBzaG91bGQgbW92ZSB0aGVtIHRvCj4gcWNv
bSxwY2llLWNvbW1vbi55YW1sPwo+IAoKQWdyZWUuIEl0IHNob3VsZCBiZSBtb3ZlZCB0byBxY29t
LHBjaWUtY29tbW9uLnlhbWwuCgotIE1hbmkKCj4gS3J6eXN6dG9mLCBNYW5pLCBXRFlUPwo+IAo+
ID4gKwo+ID4gIGFsbE9mOgo+ID4gICAgLSAkcmVmOiBxY29tLHBjaWUtY29tbW9uLnlhbWwjCj4g
PiAgCj4gPiAtLSAKPiA+IDIuMzQuMQo+ID4gCj4gPiAKPiA+IC0tIAo+ID4gbGludXgtcGh5IG1h
aWxpbmcgbGlzdAo+ID4gbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IGh0dHBzOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo+IAo+IC0tIAo+
IFdpdGggYmVzdCB3aXNoZXMKPiBEbWl0cnkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK

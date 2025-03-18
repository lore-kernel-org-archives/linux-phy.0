Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91F0FC28B2F
	for <linux-phy@archiver.kernel.org>; Tue, 18 Mar 2025 05:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yTbJJ/UH7uyvbgKAKcJlremmDqx/bnxpzenIWIGOu8=; b=ArM3wXZY76JUI3
	5pjYdF3atdkKKv+LmAOCB4q2cgCl7rx2dBSw6WNH9KvwSOBG2FU0womS4ADKCCWz91NESUzTX5cHo
	UBbx88OMiKT9YjRVkvGi8kq6stG3Yn96AbzTWlV+3pqdvQwa1jODYb3XQ8XkFLs/QAbMyV8tjFAnn
	5oGhpKWBxHypMo+/MWC0BJSBtz7MH2c1Tln/PSAcq6U19jYegckb++whIHWofDPb1/f6deTIi9Cab
	gF8mhz7qJxKGy8su1BuopLtYzww2bH7HNqaEA6mHyftoH4g3oZIalfkDuUjnzR+856JrRYU3//GcN
	JEnj4PR+9N2JXcI/k19w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPf6-00000004jWj-0lka;
	Tue, 18 Mar 2025 05:38:48 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuPf3-00000004jWG-398u
	for linux-phy@lists.infradead.org;
	Tue, 18 Mar 2025 05:38:46 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-223594b3c6dso106950495ad.2
        for <linux-phy@lists.infradead.org>; Mon, 17 Mar 2025 22:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742276325; x=1742881125; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tdaqatqISFRYNU0Pl5hfD9x9pMSiXYmVb+XBgyOMwkY=;
        b=caLiWrzKpC99TfoIzAyrDO+a1tmSP7pQyDw0OB4uHhxbS70aM5RiQDUEh414v3/zu3
         +p3hRq7kBGKudqW7Qcze9kc3m/gLWeaEhwxKWHiFxEa6Covzg/BR625R8omgFtk/p2mr
         Yqb6jIy8gV2q4cCLHx1hw0x/O9zIli/HIOl/dr4JgsKP7hKerPoOjJGX+Fq4pJ1eLBLU
         XFdU3OwoegyLXDDM/zlv12ILyXrZfslhSP7Lx8Tg07TZtC9PumKJmluMJux0MX0CVjEh
         A/1t9wj4ACZgP7HX2dXZc9NZpN5CDKS6SdYb+jFoM0E8lAUdWgPsoz7puIw3A8sxv/o1
         uecw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742276325; x=1742881125;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tdaqatqISFRYNU0Pl5hfD9x9pMSiXYmVb+XBgyOMwkY=;
        b=C1QM+jwbahlInvzW9oWXFKfp+LFf5gQzscnyZJLJlb4i2ilky2tLRLfr2OcyO8D7BM
         kGcgHajlfFO+tPqWIK1BQCcCODj5AJlbs1rjYw8rhhuQqyw8e1pVcB5mXHkL4+bmAfQu
         YmpWCXjPOaifsAj8PRsAr0u72dSPdC8Od9LNzbkK3Ppn0gePGDTzbsgPpncYUmh+RMhA
         HePcY7IGo2PuaMQXV0mojVRfVlmdrloiXN2D8cYb/eTge13fBFTtyKTQfpM1/gYxeg5U
         qlMU3a3MZtH4lNnUeM/PaC9fcNdqr4leNPlx3yPEZyDbT1MqWHL+A3eiGe4QV0tlNrql
         rDHA==
X-Forwarded-Encrypted: i=1; AJvYcCXj1RzDD9UjHjqNoNb2H0+EOzIslthfZ/7keV87+PHnnEt9cdcU1ogyqyppzI02we1veYsESKC9KPk=@lists.infradead.org
X-Gm-Message-State: AOJu0YziVxj3T4qPfMjReRgwadJbbpom3aexU9eXIHybFp8ENw7KiXSk
	G8gY6/i2WUk61oza4UbUgM5/k8E9bYEtAQTDtjtBNnABfqjg1RCb5595qvLL3g==
X-Gm-Gg: ASbGncvhPy6h0V1onzDV3BTHvcy6VCeS84xgp9+2IKHxuhH1iZRgTQ1vxdI11Mhjcr2
	1vZb0taJ1BdxHQ9sOAPzuEDBlEcqxlrkXDvxitHGFgu/JqVG2mT4DU9cB3XT1olznX3rHpxWCfl
	tIyzemWHVph1bFFfG/KLRxzVCwdid5j7Lie2X2lmZuZjG2P4MTVf3hF6/PVn/9iy2+T6h1DLkwX
	V7tpqdof1E/qqBbDGxhGqNSiOZAC0Do8UKB17hfy0LHKla0QjGsDupDljCttZ08wTOzXaYEk1Jj
	5LcGsXofKPBtcCZcNVxB/s2oBHm4D8g7LS2cFGHqmdtEQkf8edtzzKoLiKTEGo2AWtw=
X-Google-Smtp-Source: AGHT+IGtKPupstxaJ9l2OYhRXppRqOSSephtsRZM9k0tdvFT4Iz+eKcqIdvaN6lvgoSbh8+SItbTKA==
X-Received: by 2002:a05:6a00:464f:b0:736:5f75:4a44 with SMTP id d2e1a72fcca58-737223fd0ecmr16558503b3a.22.1742276324825;
        Mon, 17 Mar 2025 22:38:44 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-737116b1024sm8604240b3a.168.2025.03.17.22.38.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 22:38:44 -0700 (PDT)
Date: Tue, 18 Mar 2025 11:08:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org,
	konradybcio@kernel.org, dmitry.baryshkov@linaro.org,
	neil.armstrong@linaro.org, abel.vesa@linaro.org,
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com,
	johan+linaro@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 4/8] PCI: qcom: Add QCS8300 PCIe support
Message-ID: <20250318053836.tievnd5ohzl7bmox@thinkpad>
References: <20250310063103.3924525-1-quic_ziyuzhan@quicinc.com>
 <20250310063103.3924525-5-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250310063103.3924525-5-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_223845_790226_2993B2D6 
X-CRM114-Status: UNSURE (   7.54  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCBNYXIgMTAsIDIwMjUgYXQgMDI6MzA6NTlQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkIHN1cHBvcnQgZm9yIFFDUzgzMDAgU29DIHRoYXQgdXNlcyBjb250cm9sbGVyIHZl
cnNpb24gNS45MCBzbyByZXVzaW5nCj4gdGhlIDEuMzQuMCBjb25maWcuCgpUaGlzIGlzIG5vdCBh
IHZhbGlkIGFyZ3VtZW50LiBZb3Ugc2hvdWxkIG1lbnRpb24gdGhhdCB0aGUgY29udHJvbGxlciBp
cyBvZgp2ZXJzaW9uIDxRY29tIElQIHZlcnNpb24+LCBidXQgY29tcGF0aWJsZSB3aXRoIHZlcnNp
b24gMS4zNC4wIGNvbnRyb2xsZXJzIGFuZApoZW5jZSByZXVzaW5nIHRoYXQgb3BzLgoKNS45MCBp
cyB0aGUgc3lub3BzeXMgSVAgdmVyc2lvbiwgbm90IFFjb20gb25lLiBZb3Ugc2hvdWxkIG1lbnRp
b24gYm90aC4KCj4gCgpQbGVhc2UgYWRkIG1vcmUgaW5mbyBhYm91dCB0aGUgY29udHJvbGxlciBs
aWtlIGxpbmsgc3BlZWQsIG1heCBsYW5lIGNvdW50LApldGMuLi4KCk1vcmVvdmVyLCBjZmdfMV8z
NF8wIGhhcyB0aGUgJ292ZXJyaWRlX25vX3Nub29wJyBiaXQgc2V0IHRvIG92ZXJyaWRlIHJlYWQv
d3JpdGUKbm8gc25vb3AgYXR0cmlidXRlcy4gQXJlIHRoZXkgYXBwbGljYWJsZSB0byB0aGlzIGNv
bnRyb2xsZXIgYWxzbz8KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4
LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=

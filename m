Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E074FA3756
	for <linux-phy@archiver.kernel.org>; Fri, 13 Sep 2024 13:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHtUhx8RzysMgA8WR30O8RxnP1PnKKhuFvjb/sIBV9g=; b=djJackEPtOzecW
	RolMe06TYCVTBCJGzrBdJgrJQcPsF9TI8AtN32Ix6s4xF8tOsgGRzh5rvGpnm/Qr1+JONuJ1afE6K
	h31AzCEKxPX0BXPt27+sR5T3lCuK3m2XD4QhzHgQctCmbhhEQl+WvpyuN5PcNsagdRv8eACNRO2c7
	a9Oo3h2Rdt/b7ZKBha5+5efMpT6BPRuhc/5QTzjoFpY4xK0ZxZA02Gv2LX4SG2Xy8XLr+jLEEwH4m
	F7VT3kgMmenvmy4OOQIjesBPvc/Qhx8l70oNZt5pb1ScH6TsUUpl04cs+eF577ZO32TtZ8Q2ClsfS
	R4VrOik7s2zsM7sszy/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp6Uw-0000000G3SH-2R8M;
	Fri, 13 Sep 2024 13:38:06 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp6Ut-0000000G3Ru-3iv5
	for linux-phy@lists.infradead.org;
	Fri, 13 Sep 2024 13:38:05 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-718a3b8a2dcso744109b3a.2
        for <linux-phy@lists.infradead.org>; Fri, 13 Sep 2024 06:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726234683; x=1726839483; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BI2hDmwwKJCOx3VYE7RIwF7HNSiMnl3DjwM5Z3iw39A=;
        b=XdymKeuUSax1HEI63FrWK/J4hj/v1TUFzYIAHAKYqQidF1NR+FjbxMU/CDQi21uuTp
         NttxLS0SrRY+NutIsD8HE3GLKXaujMMtYaFWSE4XwkI3Z+2V0jo5u5hO72lEiWHX+hsJ
         BGbYMIdF94Rn50hhEjyapSu6GWZCfFy/zBKZDcVLcmtivSPGSKhU7FaL1WOtz0xKV5Xj
         tVvT64rUFMSG8subQQ3yvb32hfaMp8Bu2PFvSHeIgIw2Kq+BsJiSSX09HXF+EXjgCOpo
         taZS3WD79ozGNaB0+TBjYMkViHS1DE+oDHkYWVEI+SemfQiilUT7x5TLucMEPjmEmbYL
         PWhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726234683; x=1726839483;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BI2hDmwwKJCOx3VYE7RIwF7HNSiMnl3DjwM5Z3iw39A=;
        b=PVXs+WE1DG+GgbML0zNWO0u8/jViYDfNLeSx0Mk8SUdwgOTyuEqhreYCvMMr7tuawi
         U94O6VzyswbZ79z+4qilTo8cHlhEhSE4eyfQHFauzqpw3d8AqjjriBeJfSyIkuxXQ8ak
         LfnTeR5Jk+1T2i5LYLE0Rm9Vfwc5VXzztaKZczmKr+hXP4yqDqKvRWuJPeoyGXa4eu7i
         x5ZSTKmGi2L1thLwbkNLD4K1EM9b4xZ+14/F/l1t9YPmNuxkaH1CfEu1JmbZ84kPJErT
         +LNeDCuPQfsicrnBjEPVCIjzLg+eR3cXv8s1BcYDH+uLy/JZaKQs4gAQ2vP9cdol5BgE
         i0rA==
X-Forwarded-Encrypted: i=1; AJvYcCWB7qJ2t2eTmP1n9/Wa5DuGOu6f5YY75OqyMuIF7AUC2zPb0ddZwqo6DJBH/jFlqsNgiy42rJMU63Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YxM/W+KPSLvqCUH4QUC0URAslW8b93+fONhsxBOoSSNkyI8oSZo
	dUCq2OC4BR4w8KNLgXUCNbtXefvDn1cWTu1mt/uf4O9JFBLNd6TTSvi4Kzbc2g==
X-Google-Smtp-Source: AGHT+IHkmtRHQ+rUmoFYCE/1t6yyLL89sOdatHoosm5maSEtNzYl+sXUvxBNTHJPrww1u/l+DLihkw==
X-Received: by 2002:a05:6a00:1ad3:b0:714:17b5:c1d9 with SMTP id d2e1a72fcca58-71936a2f094mr4539801b3a.1.1726234682735;
        Fri, 13 Sep 2024 06:38:02 -0700 (PDT)
Received: from thinkpad ([120.60.66.60])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-719090b2c3fsm6095724b3a.165.2024.09.13.06.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Sep 2024 06:38:02 -0700 (PDT)
Date: Fri, 13 Sep 2024 19:07:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x8
Message-ID: <20240913133751.2yegqbobvfzbogxc@thinkpad>
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-2-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240913083724.1217691-2-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_063803_962987_3E353D44 
X-CRM114-Status: GOOD (  11.88  )
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

T24gRnJpLCBTZXAgMTMsIDIwMjQgYXQgMDE6Mzc6MjBBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gUENJZSAzcmQgaW5zdGFuY2Ugb2YgWDFFODAxMDAgc3VwcG9ydCBHZW4gNHg4IHdoaWNoIG5l
ZWRzIGRpZmZlcmVudCA4IGxhbmUKPiBjYXBhYmxlIFFNUCBQQ0llIFBIWS4gRG9jdW1lbnQgR2Vu
IDR4OCBQSFkgYXMgc2VwYXJhdGUgbW9kdWxlLgo+IAoKTml0OiBwbGVhc2UgdXNlICdHZW4gNCB4
OCcKCi0gTWFuaQoKPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2lu
Yy5jb20+Cj4gLS0tCj4gIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhw
LXFtcC1wY2llLXBoeS55YW1sICAgIHwgMyArKysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0
aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwKPiBp
bmRleCBkY2Y0ZmE1NWZiYmEuLjY4MGVjMzExM2MyYiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5Lnlh
bWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4
MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwKPiBAQCAtNDEsNiArNDEsNyBAQCBwcm9wZXJ0aWVzOgo+
ICAgICAgICAtIHFjb20seDFlODAxMDAtcW1wLWdlbjN4Mi1wY2llLXBoeQo+ICAgICAgICAtIHFj
b20seDFlODAxMDAtcW1wLWdlbjR4Mi1wY2llLXBoeQo+ICAgICAgICAtIHFjb20seDFlODAxMDAt
cW1wLWdlbjR4NC1wY2llLXBoeQo+ICsgICAgICAtIHFjb20seDFlODAxMDAtcW1wLWdlbjR4OC1w
Y2llLXBoeQo+ICAKPiAgICByZWc6Cj4gICAgICBtaW5JdGVtczogMQo+IEBAIC0xNzIsNiArMTcz
LDcgQEAgYWxsT2Y6Cj4gICAgICAgICAgICAgICAgLSBxY29tLHNjODI4MHhwLXFtcC1nZW4zeDIt
cGNpZS1waHkKPiAgICAgICAgICAgICAgICAtIHFjb20sc2M4MjgweHAtcW1wLWdlbjN4NC1wY2ll
LXBoeQo+ICAgICAgICAgICAgICAgIC0gcWNvbSx4MWU4MDEwMC1xbXAtZ2VuNHg0LXBjaWUtcGh5
Cj4gKyAgICAgICAgICAgICAgLSBxY29tLHgxZTgwMTAwLXFtcC1nZW40eDgtcGNpZS1waHkKPiAg
ICAgIHRoZW46Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAgICAgY2xvY2tzOgo+IEBAIC0y
MDEsNiArMjAzLDcgQEAgYWxsT2Y6Cj4gICAgICAgICAgICAgICAgLSBxY29tLHNtODU1MC1xbXAt
Z2VuNHgyLXBjaWUtcGh5Cj4gICAgICAgICAgICAgICAgLSBxY29tLHNtODY1MC1xbXAtZ2VuNHgy
LXBjaWUtcGh5Cj4gICAgICAgICAgICAgICAgLSBxY29tLHgxZTgwMTAwLXFtcC1nZW40eDItcGNp
ZS1waHkKPiArICAgICAgICAgICAgICAtIHFjb20seDFlODAxMDAtcW1wLWdlbjR4OC1wY2llLXBo
eQo+ICAgICAgdGhlbjoKPiAgICAgICAgcHJvcGVydGllczoKPiAgICAgICAgICByZXNldHM6Cj4g
LS0gCj4gMi4zNC4xCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCu
vuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcGh5Cg==

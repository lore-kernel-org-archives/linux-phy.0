Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED175606A327
	for <linux-phy@archiver.kernel.org>; Tue, 10 Nov 2026 23:54:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hU3gXQOt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=SfeuELYB;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=UXaC7rkS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=nDE5xeBcUkHujlTz+ijgzDKJp6CG0JK7RZkSiScOdas=; b=hU3gXQOtb1IQ2MHuz6O7u+sAhQ
	4Y8RJpXfvt++pRAa4eeEtiVNk4F017rSJ2NjrXv4S4VRdt97wR+IGJjq31IsSl+RqNBPVVBGAJj9g
	/nT6kI6uZlP0JZpGsn6ivjr/BMWWcvL45bc51sZnEi4PUlg2wL/nTkFTanmTdBj39KfZycfsqqtoj
	CUv56LEee2EcujRDyi/5q1xY4s49WRRTw1tjmrXtF4xCJHOx14HynjUe0eRU5lXToUwX+WL5Dr98S
	A+fMuYmfV7OlBDwJWx2HXXZSLSueAR3J1eNh3ETodKWBD7R+D1mcHy3g8tVVtTx6EakfLGoKbSp4g
	DigvIW5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQvfl-00000005Gwu-2pQ9;
	Tue, 10 Nov 2026 23:54:41 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQvfh-00000005Gw4-2rZJ
	for linux-phy@lists.infradead.org;
	Tue, 10 Nov 2026 23:54:40 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AAMKuP9502129
	for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 23:54:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fFw2JY7XwMZ2sA+DZUQAT8/gG6Jx9PI14r6vhW0USDk=; b=SfeuELYBGwCg4e/u
	hONBbZpGln3Lm7YpbbUq+pAOeKUz6OG/FcCeuL+UZmAE900vVqtBOO47wOq/rqBP
	KkBEg+ivEr1EsFmCaVWklVYl3ssu95uQKTlNP2kdPz7AKTrBQ26HFQJS/TvhRQ05
	V4ubZ/NN5jbl2O4h+A+1wqCnJK4QUwSUJFZKyeQhhcTccT8sjjm4bfOD1WP5Pz2c
	cwy6y9Mlv+FHBa+9miqyYryG6iPViVrdrV5CKlaawMbzg4OoX2Er6UjL0EjTMMAl
	2/3wizyOCrZdkGlH2+I5U6ZYD5rbWmvtuCf2QR/1lcmd5EUnht/h0LTwHLwyrfSN
	LtCiCg==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4huy5dbn23-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 23:54:36 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1b3b5b49cabso2253977c88.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Nov 2026 15:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794354876; x=1794959676; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=fFw2JY7XwMZ2sA+DZUQAT8/gG6Jx9PI14r6vhW0USDk=;
        b=UXaC7rkSPnZ1IXowjgtSpKOCiWGAltkzxG3rFsoWa+OFHLeo/P/gsLU1t/EYBPyzG6
         b7eqqNcm2dqF1wcq1Pw8rjmEaCJfeZsmTEIGotnWOZaQAlgkQhMEaCpxwpOF/sdC905m
         mRDHKAnowf+PNbhnjdhick70PhVFJ8qWGgqNmME2CJuXw+YSTxNXOr8AXfRePxgoqk2L
         JtpOQUuCXur1tZrIyNAy0RAjlISO4xYuKk8e5qLaEp6THlVwrl3f4+V9kxgBbYAGXI5t
         mmtURpYA5Nuvt4eIK6MigA1bHLmjEzbEU7mz2CfDauBoWKGa2N1VOfSdEd4C9SeKqfpG
         e5fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794354876; x=1794959676;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=fFw2JY7XwMZ2sA+DZUQAT8/gG6Jx9PI14r6vhW0USDk=;
        b=wN6VslNmcqjqxk1VDJXILCRqHr3FZY6FyBI3GJUrLH51VzbjNQ2BGsBV1jn8+TqjHp
         akkAQPt7RfNZE4/ofgSTtLqw4BCfo0884UTZGRNjPgfFgltrunbHxKer8psqMQVv0QjE
         ykfASZFOJjN/1h8w1Q35byGMH8HAp2gBfw08Hax+sAm6qZHnuNMv56UKrShxhOAXrv9r
         +8zCj2HvYiS/YlzJmMk8YDfwh2oxnfk9MipXcrrIXEy70I/e+/5QG7/cdLm1MMF14I+w
         3Ph+NK/qUS533ZT7mw9s38ya0MRycZsH8DMIS1p3qSja3UdRyZpmcuL62vENy7HHYgcl
         MWTA==
X-Forwarded-Encrypted: i=1; AL+hErFoM3w+NY6dlrmKxgN+QbjZJz3BVYpZ67/XEdyc+AuJMR5RwfmCONuZjuW59dWxl3Cmw6ihvgSEqyY=@lists.infradead.org
X-Gm-Message-State: APuU4Z/WQezzOSoX9PClalzdUOSO5XiNqOeKCIq/BeMMFTEdaubAtT61
	6qX+hdW0yWYjvLJ8IY8iMlCAv4+M33Af6pWMnR5RPfmYOFb+9W9uFDWuMlKbYkXhk0KYiGPOxtY
	D3pjfUO/cAR4h8wOSvGaOm34Mk6U1lGabCRsXxX9a9d/J+hex5rDBE6a1beBFgCTfJswLxV3fGA
	3p
X-Gm-Gg: AYBFou2FOGDIFwLxoSYmlOLBFZWoZDr2/uUKgOw/OsQ0d5sFB61GRDr3wH2QSHRrj+E
	Is4w6pKRFK5MB+GjRgMUq4cEKfnXUMooM5iHRTxFqmtOqhvlxeL3UZP4D6Aiw+YS0u/Y+RnnjyX
	T6uTSp6Ob1V+1xCrQtVVUDGv5bOKpf89g6bKwFgoEWJdnFlb/YuDtTvcIDZ+KFAH5jLv2HQnm2i
	o9lBwET2EDfE6QVD0NHcn6b/72XJ67WS3EPm7OU4mxd+PhC49qXQgU1l4QSumCvatzQBLoYJkZZ
	Tnksxd9yqm9HJYmH3F+fn2h091sMT827Yeq3FmoDoj6xoF0k2rneO1xkPOzI8w5+UTXtGBmRL4N
	639PHuOcimUuTUe7OIbviUsmSm9lThFvymThCfSGoQhxb1PwLn2RWaWDG/HfWzwtKSGEBT1NFRW
	V0nLCaaClv8oSa7ZFJLgbd/mwYzJaqzQ==
X-Received: by 2002:a05:7022:b058:10b0:185:33ab:4d55 with SMTP id a92af1059eb24-1b3c137c87emr119578c88.29.1794354875714;
        Tue, 10 Nov 2026 15:54:35 -0800 (PST)
X-Received: by 2002:a05:7022:b058:10b0:185:33ab:4d55 with SMTP id a92af1059eb24-1b3c137c87emr119546c88.29.1794354875021;
        Tue, 10 Nov 2026 15:54:35 -0800 (PST)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b4efc2sm8844926c88.15.2026.11.10.15.54.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Nov 2026 15:54:34 -0800 (PST)
Message-ID: <d5b379a7-5796-4231-90d8-e33e24c55886@oss.qualcomm.com>
Date: Tue, 10 Nov 2026 15:54:33 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/4] phy: qcom-mipi-csi2: Add D-PHY support for
 sa8775p, qcs8300 and sc7280
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
X-Proofpoint-GUID: nS3OsSpBIEZvUL-clPQlkLNjDFZVK8CE
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEwMDA5NSBTYWx0ZWRfXwKMtRVS4hcxe
 fgBMrebs/XDjFjFAKND++NI0uASTyq0WGsXSPiF9WG3g8zVfuEiPWejJ1dbdNR3W+9rDPvAnGJE
 H+/QudCa5pkq6LBzAJZmWKpOwpHsWHc=
X-Authority-Analysis: v=2.4 cv=d+9gWhjE c=1 sm=1 tr=0 ts=6af3aebc cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=M1MyrToEFICnjbQwadIA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-ORIG-GUID: nS3OsSpBIEZvUL-clPQlkLNjDFZVK8CE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEwMDA5NSBTYWx0ZWRfXxneAzqEQ/YzW
 e6gFfQeCQUSorelXx8Nm4fXHjoidZdJi0RN0atNxnO4l+PXSEQ9RaCuBLUoVlv279pCEcOOXooW
 s9mamDwGT8kFaupFEwFipK+7I/Vv9BoHU+Xd7PDd1y7Z+KOVE5ezhy9Z1QQ8cg6cq2HxXCp5Tyh
 y7SSzPwDjnOSEEN/SKEH7DWEHhz59YwZwm4HuU5DdKMv7BQjPla3S1UFpaiJCN4yf00+JhSTQW8
 BIXpDWMtbaieA0OXmgmveciN0GCKv1QVqm+vfX4tjYrybXJgy0TMTQ8ePUPtFoF5uKYKZAois1x
 Kn/NEgGqeV2qSNgZsr4nYQDE22TF4jYDCh2Kb6enh0SE/LT6xUeZbdy6Db+Vek/nc71S/HgfqG7
 DhVLxtkPLGNslmwp84Yt+bK4UFwb37LRvAh/L3aqGJPdec3anelFEFejPsKJr7fFalqifphm0TL
 nu1t9OhoIEu1hLoNX6w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-10_07,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611100095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_155437_734915_12C69D69 
X-CRM114-Status: GOOD (  27.45  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Krzysztof,

Sorry for missing the answers in v2. Here are the answers to questions
in v2.
1. Q:
https://lore.kernel.org/all/f319ba87-5569-4323-ae4c-3f9f34a9a3c1@kernel.org/#t
       v1 link is -
https://lore.kernel.org/all/20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com/
      v2 link is -
https://lore.kernel.org/all/20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com/
      In this v3. these comments have been addressed and updated
accordingly.

2. Q:
https://lore.kernel.org/all/a103b49e-e13f-4c70-b9a0-261534cfef79@kernel.org/
   That Reviewed-by was given in an internal review, not on a public
list thread.

3. Q:
https://lore.kernel.org/all/fe8bfa99-3fbb-4634-b99b-a36c2f8b35e5@kernel.org/
   Agreed on both points. Why it existed: it wasn't added on a guess
that some SoCs would need a different names. In v1
(https://lore.kernel.org/all/20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com/),
timer_clk_name/opp_clk_name were added inline as part of the sa8775p
patch itself. Bryan asked only that it be split into its own standalone
patch ahead of the SoC
work(https://lore.kernel.org/all/392642ad-3bac-48bc-9199-8c3923c588c2@kernel.org/),
not that the configurability be justified or kept. I did the split for
v2 to verify whether the original premise still made sense. This driver
does not support platforms such as x1e80100, sa8775p, or sc7280, nor do
any of them ever declare a different clock name.
  Dropping the patch entirely in v3 rather than reworking it.
"timer"/"core" go back to being hardcoded literals, same as before v1
introduced the configurable fields.

4. Q:
https://lore.kernel.org/all/8942bbed-cd53-44a4-8559-c18fb2073bb2@kernel.org/
    Reviewed-by: given in an internal review, not on a public thread, no
lore link exists.
    On sc7280_clks[] and "what is the point of patch #2", the array
itself has a point: each SoC's soc_cfg needs its own two-entry clk_names
array matching its DT clock-names, same as x1e80100's and sa8775p's.
What had no point was patch #2 (dropped in v3) adding a second,
overridable name on top of that array, timer_clk_name/opp_clk_name, when
every one of those arrays already says, "core"/"timer" and nothing ever
varies it. In v3, sc7280_clks[] = {"core", "timer"} stands on its own,
unconditionally used, no override field anywhere.

Best regards,
Anusha
On 11/5/2026 3:51 PM, Anusha Arun Nandi wrote:
> This series extends the generic Qualcomm MIPI CSI2 PHY driver
> (drivers/phy/qualcomm/phy-qcom-mipi-csi2-*) with three additional
> CSIPHY variants: SA8775P, QCS8300 and SC7280. The driver currently
> only supports x1e80100; these SoCs let CAMSS consume the CSIPHY through
> the common PHY framework instead of the CSIPHY logic embedded in the
> legacy in-tree CAMSS driver.
> 
> QCS8300 shares the same CSIPHY D-PHY hardware as SA8775P, so it does
> not need its own of_device_id entry: the qcom,csi2-phy.yaml binding
> declares "qcom,sa8775p-csi2-phy" as QCS8300's fallback compatible, and
> QCS8300 CSIPHY nodes bind through patch 3's existing
> "qcom,sa8775p-csi2-phy" match entry.
> 
> Tested on sa8775p, qcs8300 and sc7280.
> 
> Changes in v3:
> - Patch 1 (binding): renamed vdda-phy-supply/vdda-pll-supply to
>   vdda-hs-supply/vdda-lp-supply, and restored the DPHY split-mode
>   port@0 definition (two endpoints, lane-count constraint) that was
>   dropped from the combined schema, cloning it from
>   qcom,x1e80100-csi2-phy.yaml instead.
> - Dropped "phy: qcom-mipi-csi2: Make timer and OPP clock names
>   configurable": no SoC this driver supports actually needs different
>   clock names, so the patch had no real effect.
> - Patch 2 ("Make OPP table optional") no longer depends on the
>   dropped patch's configurable opp_clk_name field; it now adds a
>   plain no_opp bool instead, with "timer"/"core" kept as hardcoded
>   literals.
> - Patches 3 and 4 (sa8775p, sc7280) dropped their now-unnecessary
>   timer_clk_name/opp_clk_name overrides, and renamed their
>   vdda-phy/vdda-pll supplies to vdda-hs/vdda-lp to match patch 1.
> 
> Link to v2: https://lore.kernel.org/all/20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com/
> 
> Changes in v2:
> - Dropped "phy: qcom-mipi-csi2: fix -EEXIST probe failure on single
>   power-domain SoCs" from this series; posted standalone instead,
>   renamed to "Add support for single power-domain SoCs" since it adds
>   a case rather than fixing a bug.
> - Squashed the standalone qcom,sa8775p-csi2-phy.yaml/qcom,qcs8300 enum
>   addition/qcom,sc7280-csi2-phy.yaml schemas into one shared
>   qcom,csi2-phy.yaml, modelled as a oneOf compatible list instead of
>   one file per SoC.
> - Dropped the standalone "qcom,qcs8300-csi2-phy" of_device_id entry;
>   QCS8300 now binds through the sa8775p match entry via the binding's
>   fallback compatible instead, since the two SoCs are fully hardware
>   compatible.
> - Squashed the separate "Add qcs8300 CSI2 PHY support" patch into
>   "Add sa8775p D-PHY support" to match.
> 
> Link to v1: https://lore.kernel.org/all/20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com/
> 
> Anusha Arun Nandi (4):
>   dt-bindings: phy: qcom: Add common qcom,csi2-phy
>   phy: qcom-mipi-csi2: Make OPP table optional
>   phy: qcom-mipi-csi2: Add sa8775p D-PHY support
>   phy: qcom-mipi-csi2: Add sc7280 D-PHY provider
> 
>  .../bindings/phy/qcom,csi2-phy.yaml           | 201 +++++++++++++++
>  .../qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c    | 228 +++++++++++++++++-
>  .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    |  74 +++---
>  drivers/phy/qualcomm/phy-qcom-mipi-csi2.h     |   5 +
>  4 files changed, 474 insertions(+), 34 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,csi2-phy.yaml
>  
> Best regards,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

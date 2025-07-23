Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41263C83F17
	for <linux-phy@archiver.kernel.org>; Wed, 23 Jul 2025 16:06:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bi1w3BYhsUFhrBynsCbq5dUwa4EJxF2Q0+u/NF1VI4s=; b=PT9EtM/RyM5g1g
	H4kn5cD2qIUEzie24Nj7uzhvltM6VB77XoGmokONmcciWPqFZBF1PlyHiAcXOGZQuFMFsLrjVbfFC
	maIYcdexstYB0lkEU16wX6CkzkLL+akICWdceuJJC4QS0IHf05NGoOXfi6nihLdef7TEutsfHvmeM
	kHYiGQNsn6NQeA0N2gbRY2xzdHDsyb+sUpZ46fI3mycslYmYYVsIvomyz+4spx55Br7NWOHGRyORy
	T5aPrHtHTIYBCTIHjuByrNDlbqmo+YHK9n4KRqJOT/nJgqSy1IbGlvZqnk4+JM1RzZ/O4XyivPv0p
	WYotfa/anCv87SCGbIQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uebyu-00000005SqC-3xba;
	Wed, 23 Jul 2025 16:06:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uebx2-00000005SgM-0bOc
	for linux-phy@lists.infradead.org;
	Wed, 23 Jul 2025 16:04:17 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9PGFD001802
	for <linux-phy@lists.infradead.org>; Wed, 23 Jul 2025 16:04:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1IVq+bSzc+i0gbcHvdWX5X0gFlHkos8QZkR6QJHMwvk=; b=kju2Vkh5qgJixjmy
	0LuCVz/DmtBSHrsGDasQ2Tu4i4rfNXAg2XZijdJlxWiM0RpwLAZbVFKCm8Hoovgd
	WyypJ2Tp2ECJ6/D1ZBIJHVqwaTsrmnVKfxO05S/8LVeJ0NmZJe+U7mjn8HyvKFW5
	WcNqfS5NM8YhZeMkOp0DKg7PAe1X3OEvU2mHfm1mF6KDDKQijF22o/x9jptCNyUh
	BOS1stNXo85wblzZy+glcyioFMYcaFb4KIcBZXUd5gJC3WFcJPxUA5DOEv/iR8ME
	wjI4qeGDb7YbpAdubb2R/ukaMSlVLcn4TxEL7E+S9nP8vhm/uE+yAodgIFoYaY9w
	wTDMiA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48045w46pd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 23 Jul 2025 16:04:15 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e350826d99so7298385a.2
        for <linux-phy@lists.infradead.org>; Wed, 23 Jul 2025 09:04:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753286654; x=1753891454;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1IVq+bSzc+i0gbcHvdWX5X0gFlHkos8QZkR6QJHMwvk=;
        b=cqZcPEhtv47/K7mE676ZdEWRxH2OTPHwACtYOsjOhvVzcYLHgmOpxIlc1zBKSuMiSw
         eTcYCue4w+sV+p/m1Ql1cykSB+AFFg2aDZSVZEehvTb3nP7HVLJp3IBINKP98Dm3Nqc2
         f9Fk0LE4+yy37HlG6awRmdVGLt8d73wbwdAJshPtoABznTNqb/JHdvepluSsaWxqDtCV
         DwVCrqLIsQR4w1YkstBJcSR3uF4fKhftFDffGYT1R+HUAQ8AmSnm/+lJrvOdHZfxmF9z
         AGFV+2I5q8aDxzlH0k6GJZ2mKtxbzmCWEyhVRU2Lv8HwNS/uySIlS02lj7FzPd8qA1FB
         iqfg==
X-Forwarded-Encrypted: i=1; AJvYcCXRwXP8dfeIQhQRxWwO512UTVhF6yjb5AcuoiBT+MGohunjdNkmEb2TdPTrL60pck3q0Rqrw5PrMRs=@lists.infradead.org
X-Gm-Message-State: AOJu0YxtVdaCAOrlW74vIXSrFHU7KclY2rRLbltNi69dlyRnkuuHPIUr
	UYh9UCwQbKeBJng2QcRjVgkv+EHYAFDMFmCBFkDD+6z5WcZwpzjI2PuEWuD56AAxONsAXcHf0/b
	acpt1pFeh+arU1JudaHl+oant1MRuPWQQrjKGcYL3C1o/+Sr7T89YKIapd1qjj+SSVjc/
X-Gm-Gg: ASbGncsYhduRjHq1AddS/PF+aU+WVoDfOKYAh8paZD32VhCroe2f5w81xNxJ/kCCoQJ
	/PUuf6j/4UMBUHm+/G2tEHsQvbDpuJL6xbxDWSuGfudydvIlB1+MG/FC4lf0x6HGP4AyaWFB+5f
	8ChKE4QbRdwTQleVB5XY1CDBMTFJUZbuPSQsZjqHBuDqIxSXJ2mAjb1YrvUJsQN4MhIt+XAavwf
	ZrRwqFdDflkrs0wF/wgUqxqTWULU8QodwAd1hiL1hWRpNEtBj+z1e0z7bTjTbuwBEBAKD+73x9N
	Jf6tSi2qQA7cvGUtzUcR5IseOT4juKxn29s=
X-Received: by 2002:a05:6214:1c86:b0:6fa:c81a:6231 with SMTP id 6a1803df08f44-707006aa843mr42537746d6.8.1753286653612;
        Wed, 23 Jul 2025 09:04:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHhZaSVPPcM0H02S0SyrGlN2YH/RRRuvuVz7tS54TmJPI+kAWBGLQw4aW0+GxosM+D8oehJNQ==
X-Received: by 2002:a05:6214:1c86:b0:6fa:c81a:6231 with SMTP id 6a1803df08f44-707006aa843mr42536996d6.8.1753286652887;
        Wed, 23 Jul 2025 09:04:12 -0700 (PDT)
Received: from [192.168.1.17] ([61.2.112.87])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-7051b8bc2dasm64468956d6.12.2025.07.23.09.04.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 09:04:12 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
        Ziyue Zhang <quic_ziyuzhan@quicinc.com>
In-Reply-To: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v5 0/4] pci: qcom: drop unrelated clock and
 add link_down reset for sa8775p
Message-Id: <175328664500.29282.12330427204137280127.b4-ty@kernel.org>
Date: Wed, 23 Jul 2025 21:34:05 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=LL1mQIW9 c=1 sm=1 tr=0 ts=688107ff cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=L2vWZV9GmkZVUxua0bORKQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=AxdmJqN1ex9b-t5leqYA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: xqQg5sBoBdwoFVR6YVolqozbg7Su-Neu
X-Proofpoint-ORIG-GUID: xqQg5sBoBdwoFVR6YVolqozbg7Su-Neu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDEzOCBTYWx0ZWRfXzD6fMoos3B7M
 VW6pNpcBqu6AOxjAnSdmz4pknrjf9NBDM/6KUQWlLG87mO0vTOk/rt8k/AHBxp+52R3jpC517xf
 lIYBY5CV1z+tq1ksVXfEu1tys2njsvOJxUn0UZfQN///SUQzC4r+ii4Tf+pCN6vOGbLVHTPbcLE
 +tWWk7y8sZSJnBHOqHPuwIzO+oHDpc1Nmhc1wX+V7ooqrVicnhfL28+NfDJn/qLg579QPhwui60
 CMvU/dvYNz2kTnVK+z1ZcbXC1+aLmhzbaZkBGhngI6w4HrkfW4mgNgo0gNv/rixEq9THEEx0Qhn
 exUz9Qbbuz8zF1MsDxW09XuxFng+kOXs+TWTsZAy6uCC/2g6RqO5s4f0v0GHdrE5PPaJRAYd5Sd
 RAhy2I/wcGoppfD1+EmyBiJ/q/iLEF0/Eq+c3vsTpT31mZRgkWQcjcqdt3B6zjhumz5BEF7t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-23_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=895 clxscore=1011 mlxscore=0 adultscore=0
 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507230138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250723_090416_196602_9AC9AD8D 
X-CRM114-Status: GOOD (  11.97  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On Fri, 18 Jul 2025 16:17:14 +0800, Ziyue Zhang wrote:
> This series drop gcc_aux_clock in pcie phy, the pcie aux clock should
> be gcc_phy_aux_clock. And sa8775p platform support link_down reset in
> hardware, so add it for both pcie0 and pcie1 to provide a better user
> experience.
> 
> Have follwing changes:
>   - Update pcie phy bindings for sa8775p.
>   - Document link_down reset.
>   - Remove aux clock from pcie phy.
>   - Add link_down reset for pcie.
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: PCI: qcom,pcie-sa8775p: document link_down reset
      commit: 10e7298dc0f14c52d9b5c52fb52558f567815b7c

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

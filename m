Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 904F9CD98CC
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 00:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C7ASgwxGD36cg9K6TsQsruhQUvbxgr75wu9vVKnBbvI=; b=eyU0KrjkRlIJjS
	W32yzSTqRIPgOkn1FiEydtG+QE24mTEpk8Llh2rXdUI59EG6ksXWrgRLxPBeDJw6owy969NAIObpc
	xh5aShMlFqvgoRjC7ivrL0Bgx/H4aWMFo2D38utsEpWoxMihgc3pw9smIL6GjonidR8tTYTl1UWY6
	Rw0sASZGSXWpcvKTQ6d2gfM6tVeW81r3mIRmMDM06wpClhN/ue5aJ/nwggRe/1F/ta6GRRMTd+vS/
	sSXFLpvDyq7UttcfQz5Kg0ZwexKze/SSHTLMx7ERgOJE74X/frAKkw+nRMcArnx1Q0q4P6B6kQEHl
	ntMXH9BF9KVNhVkS7RkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpvz-0000000AE3Q-1Kg1;
	Fri, 12 Jun 2026 00:39:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXpvw-0000000AE2r-1DzC
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 00:39:41 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65BMT9iK1825303
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:39:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5qQ8e+6QnBVjDDTImvqK60bW
	t8XMxUyo3/iEy7fPpGU=; b=DCESS5gIwMluiS8dJ2s5VqpNPtF6XHo/KaprE3hg
	79dqmF4Dk0roT2GdajIsDO91xkDoNLwaSg6ZxveHaKF3utWFQUYZMC99YjefrQX2
	zoKpCLsrzHTaCp4DqbWK7HbLhSbc9sajANAT2xd/hCFQGIG2p02+Dhw6LDoqke4a
	Fb28BLULMWmnaAfq0zxfF5xSC9uNF4AaGucKzeOj8NTQLScDDK6yasrvHdMJJqSp
	UZiwV9vl6vIcpRKUpvWoZbWShZ/9P4Lv92RwahBGlXYP8D84MU5SVJi4v9vtL6lX
	MJu14nBZWgx8aF7QzeCdFH93cs9iNJ2A3IpHzlnMoIa8YA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er1659kss-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 00:39:39 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3080bb0267dso1013532eec.1
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 17:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781224779; x=1781829579; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5qQ8e+6QnBVjDDTImvqK60bWt8XMxUyo3/iEy7fPpGU=;
        b=L9hnJGkXMWhSh+vxGCCnVULczLww79X9QGmvDm5tquoA7BcliX4RAMsY7lsO9rK7P3
         U2QkezRwxbuNM3H1g+atAYIUyaZdWV9+XL9bM6JNVtpbCwkXc6YHWXjRIfLPbVnD3SWE
         YMF2NfXnRqcNir8jqvarMMWqyLAg/d1OgRHKbo87QZCamq+Xezrsw9F5xR+5MX2cjwlS
         rGwwOzlCi9tZ8HBf596d0uAflS/bMJd6eZL1Yoh49J03XGUMvuzmLE2dD/6DQM28HA9z
         ffFAMCOY8fvy9ympDoppnJRka7Nmsg55u6/Z8z39oE39WkKwu43dq3ly1VpcqtsBLv36
         n5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781224779; x=1781829579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5qQ8e+6QnBVjDDTImvqK60bWt8XMxUyo3/iEy7fPpGU=;
        b=bEzKMaPTlZjydaRvzKgU1aNuRhl5MhLbnEwKPew9fXiSkL/oucyddEwEcA4CN/xsYy
         cZE20iJpf1k4YaOnpW/iIy9wyyc5n/ZaybV8Q9ex/xj/dyiExNSLt65mN61/eZH130hF
         Aa22no73RBoKjMF4t1UmL7zH4z6kmZzmo7uO914KXvysZ4qiChwxXNX5XtpauO0YA1u4
         jQPxX0kHgGGAlFpaWWq5VD4WLSHD00eGOBam3QlTVr/QwFal8zQ40+FsyYW7PgxbUSDw
         kjhlHNk9FUMo5ABlPZSgBU2f5OsAk6EksdaN/nQL4wWKzQL5x4HBfNh3Ndnji07pPunl
         U8bA==
X-Forwarded-Encrypted: i=1; AFNElJ8JNrUPwqNvB95ez4TK8snlD6M3SMyi8lAoTQ2zL6tNbYlFVBILTur1uNywGsNf0ehyqDyvmU+NZnQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2n8DkoWDgpQ8rWz/HBozek8+Uex3/YsCWCRiREUjv5iAvcDYv
	fthdu/jcLbFkFemMpK55T6Od/0F3QkyRwqdhCjz28Qnu9VJ7tsjD4PKQKlnuezWqc3ssqVEiF3k
	wS9hMCu1WxISYi2kXIKGA1DJFX0JU/qYf0HA/cUabTDy5+M7Gfdxjz8L6iktCSzYwx/z7
X-Gm-Gg: Acq92OFEWg0OM164rFUWdVtrh/h9BJ03HWw1T2oZbofC7w2uhNeet8TEx31hDF4ebmv
	KDh69f87m26kqEc8kc8Fdrfc98Hzhdm5r6or3DPyQsqj9/mrrSDBOt3f4c4LLM7AQ9b3WcPZDvH
	m616VWK2JF+8D9Cmq1Sp4nb2mARjEuFo35IZSY0+b52Ldpk94LRhNoTFc0coOkQ0NUwjsR3Q6m/
	8BUt8S75VYtjDu4eQ3wIy1MUU/IVkpIjCjoCfEtrffg5BuzV937JDS+R7PIvW9UPqCDI3q1esyN
	gibMyNuNt938QrHr5rnK4Aw1EFrxmhr7VoUijEzGo9Nqyj1E/aixFHEe+uk3gXL9gNwZ35/WHjD
	xOSoqhpkhTiRSZrGwtdcIstMjKd41I2P/OAZdS85dnQNXOV5z6pduQoAjMlXB//fXb0zTSRr9o1
	TBkw==
X-Received: by 2002:a05:7300:5b83:b0:305:179:4dde with SMTP id 5a478bee46e88-308201e35c2mr451394eec.35.1781224778917;
        Thu, 11 Jun 2026 17:39:38 -0700 (PDT)
X-Received: by 2002:a05:7300:5b83:b0:305:179:4dde with SMTP id 5a478bee46e88-308201e35c2mr451363eec.35.1781224778353;
        Thu, 11 Jun 2026 17:39:38 -0700 (PDT)
Received: from hu-mattleun-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3081eb9a2e7sm987482eec.30.2026.06.11.17.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 17:39:37 -0700 (PDT)
Date: Thu, 11 Jun 2026 17:39:34 -0700
From: Matthew Leung <matthew.leung@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 00/10] phy: qcom: qmp-pcie: Add PCIe PHY support for
 Hawi
Message-ID: <aitVRtzigfZg6Me8@hu-mattleun-lv.qualcomm.com>
References: <20260604-hawi-phy-pcie-v2-0-be908d3560db@oss.qualcomm.com>
 <egojnbup5igcre6ccegojsdrvtokwfoccqhwmfxkoy5ukvuxvj@ailtbrgrgocs>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <egojnbup5igcre6ccegojsdrvtokwfoccqhwmfxkoy5ukvuxvj@ailtbrgrgocs>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDAwMyBTYWx0ZWRfX3mmcW9i4207G
 WksiHzTLNqacg/Ev3iOpBU8ggmBok8FmQIHoysELvpc2NxehBPImOmbbOnJ6+cn4M3CkgJPW7G6
 RiHlF7DiQcL7Q7stIIIbAKVU+zFYz+7lRRrvpOvqenqspDw9XNmhofV4a6LS+KmdghMVstwo/lk
 TuhYLxv9s4rnjMi+eEg8rvrkZKjyXpCPStOuJP6hkIl0YqNcHfu8mpWkvfeDMnBpuZEsprWg2sT
 yE2YdMQ6jf4IzzYx+YrUaaLizDb6FE0TTJdsZGABMbDTHFZ6C7fqP8YAlMCBnXIdclS6OrvOV4E
 PCCU6Ws9sDCNFwLFjrgdEM8bTgJxjr2Uh8+d3c4vB4KtyI5I3ltqyWndubWQyYsa3zFy8kUBrwu
 yQzqjjqp7DTF6oDFcI0nCFkeNSLAih5bHP2yiSq+fgiEsDbfSJxBxifehrAzt9EF1SIB6uDO1cc
 wcodxDEZ6edE6As8jzQ==
X-Authority-Analysis: v=2.4 cv=LNpWhpW9 c=1 sm=1 tr=0 ts=6a2b554b cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=bC-a23v3AAAA:8 a=JfrnYn6hAAAA:8
 a=KKAkSRfTAAAA:8 a=ph3dTG6zQT6veRjdJtQA:9 a=CjuIK1q_8ugA:10
 a=scEy_gLbYbu1JhEsrz4S:22 a=FO4_E8m0qiDe52t0p3_H:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: WinjHCk0FLowKZZ02EDIU5XpRB3EYpZF
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDAwMyBTYWx0ZWRfX4HUQSPEffg0Q
 3rZcC52j+ZolRUMId2nqXdR9gusaLVtzGT4a0jP8ZzI1PUbmodNwyGeGbLsuUonyJR/YqvNSeQe
 cz37uufw9W7l4Vvbw4SZxL7nLV6iq2g=
X-Proofpoint-GUID: WinjHCk0FLowKZZ02EDIU5XpRB3EYpZF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-11_05,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606040000 definitions=main-2606120003
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_173940_339687_F151EE4E 
X-CRM114-Status: GOOD (  28.40  )
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

On Mon, Jun 08, 2026 at 12:25:03AM +0300, Dmitry Baryshkov wrote:
> On Thu, Jun 04, 2026 at 01:32:54AM +0000, Matthew Leung wrote:
> > This series adds QMP PCIe PHY support for the Qualcomm Hawi SoC. The Hawi
> > platform features two PCIe PHY configurations: Gen3 x2 and Gen4 x1.
> > 
> > The Gen3 x2 PHY uses v10 register definitions, while the Gen4 x1 PHY uses
> > v10.60 register definitions.
> > 
> > The series adds:
> > - device tree bindings (patch 1)
> > - v10 register offset headers (patches 2-5)
> > - v10.60 register offset headers (patches 6-9)
> > - driver support with PHY initialization tables for both configurations
> >   (patch 10)
> > 
> > Overlap:
> > The series has overlap with "phy: qcom: Introduce USB support for Hawi"
> > by Ronak Raheja (see link [1]). Both patch series introduce a subset of
> > v10 registers (this series for PCIe and Ronak's for USB). I have
> > coordinated with Ronak regarding the overlap, and we can update the
> > series to resolve any overlap based on the order of merging.
> > 
> > Link: https://lore.kernel.org/all/20260508213234.4643-1-ronak.raheja@oss.qualcomm.com/ [1]
> > 
> > Signed-off-by: Matthew Leung <matthew.leung@oss.qualcomm.com>
> > ---
> > Changes in v2:
> > - Rebased onto v7.1-rc6
> > - Patch 1: no change (Reviewed-by carried forward)
> > - Patch 9: rename QPHY_PCIE_V10_60_PCS_PCS_TX_RX_CONFIG to
> >   QPHY_PCIE_V10_60_PCS_TX_RX_CONFIG to be consistent with the
> >   naming convention used in previous pcs-pcie headers
> > - Patch 10: update usage of renamed macro
> > - Link to v1: https://patch.msgid.link/20260508-hawi-phy-pcie-v1-0-237b894353fc@oss.qualcomm.com
> > 
> > To: Vinod Koul <vkoul@kernel.org>
> > To: Neil Armstrong <neil.armstrong@linaro.org>
> > To: Rob Herring <robh@kernel.org>
> > To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> > To: Conor Dooley <conor+dt@kernel.org>
> > Cc: linux-arm-msm@vger.kernel.org
> > Cc: linux-phy@lists.infradead.org
> > Cc: devicetree@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org
> > 
> > ---
> > Matthew Leung (10):
> >       dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Hawi compatibles
> >       phy: qcom-qmp: qserdes-com: Add v10 register offsets
> >       phy: qcom-qmp: qserdes-txrx: Add v10 register offsets
> >       phy: qcom-qmp: pcs: Add v10 register offsets
> >       phy: qcom-qmp: pcs-pcie: Add v10 register offsets
> 
> Squash these 4 patches.
> 
> >       phy: qcom-qmp: qserdes-com: Add v10.60 register offsets
> >       phy: qcom-qmp: qserdes-txrx: Add v10.60 register offsets
> >       phy: qcom-qmp: pcs: Add v10.60 register offsets
> >       phy: qcom-qmp: pcs-pcie: Add v10.60 register offsets
> 
> And these 4

Will do.

> 
> >       phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Hawi
> > 
> >  .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   6 +
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 382 +++++++++++++++++++++
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10.h   |  18 +
> >  .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v10_60.h    |  26 ++
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10.h        |  22 ++
> >  drivers/phy/qualcomm/phy-qcom-qmp-pcs-v10_60.h     |  23 ++
> >  .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10.h    |  49 +++
> >  .../phy/qualcomm/phy-qcom-qmp-qserdes-com-v10_60.h |  55 +++
> >  .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v10.h   |  47 +++
> >  .../qualcomm/phy-qcom-qmp-qserdes-txrx-v10_60.h    | 109 ++++++
> >  drivers/phy/qualcomm/phy-qcom-qmp.h                |  10 +
> >  11 files changed, 747 insertions(+)
> > ---
> > base-commit: e43ffb69e0438cddd72aaa30898b4dc446f664f8
> > change-id: 20260506-hawi-phy-pcie-283933b4113e
> > 
> > Best regards,
> > --  
> > Matthew Leung <matthew.leung@oss.qualcomm.com>
> > 
> > 
> > -- 
> > linux-phy mailing list
> > linux-phy@lists.infradead.org
> > https://lists.infradead.org/mailman/listinfo/linux-phy
> 
> -- 
> With best wishes
> Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

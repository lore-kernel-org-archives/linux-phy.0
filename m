Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3D42C5AD49
	for <linux-phy@archiver.kernel.org>; Fri,  6 Jun 2025 10:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqn49JWLkTX+5HpEjGwcLk61cq+Kb8RPeTq9Q6GlvYw=; b=IRVIMJO6azMeXO
	7YHqMG6zKOQWc8iZQpLZzRgx5gx+A9z15u4filPM7mYW48yAEhT8T3r282unuA30XY4p2nslW1SDg
	v299XXS9G1C5+Ws+JcdEufDgwNinkBoONgCd3+4ymNL5UvCTU9b/AlTQNraLDz0/ndzyWPW4QV5sk
	F94TR/v8uScireszAWOPaXG9HD7dYXIljuIlfGrdCNaQg6KKU4L9fFoJAMnPU0l5zh870I/TRc04/
	kxW69wJdlz6++46CVBmBaKWPMqPwFx/XVHrpsForW5//UWPtR+GIl+k3OT4HeOaCkgQy5Rb/IscHw
	17tRsLkmwvj0EKBJBblg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNU98-000000001si-1nam;
	Fri, 06 Jun 2025 10:17:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNU96-000000001rx-0RHF
	for linux-phy@lists.infradead.org;
	Fri, 06 Jun 2025 10:17:57 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5565rook006553
	for <linux-phy@lists.infradead.org>; Fri, 6 Jun 2025 10:17:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=MUm770nsjTk7RKaqGJXS/UXM
	bcC3CLIfXaIBHht8qoo=; b=W/8NzpW0F9AfIenOSQKcaHAtJd6pwGHnLQ78YdyZ
	VRa0/MQkCsHkOd05mCswdst64V2qpJjZbOf0Hqh3w1gjcq4siRG8fCEIn3blroMS
	AkU6oTlRt+c8EZI67XOllofobWQ7GAizeV2l0rhhTYLVFLBgoR9AeS+wYaGtjIZs
	GKv7HFBC3/J0UBIqyRIUkIwcTf9VnkN80hEc31kIUThXYYeJaXqWN7oUSgKMSGQG
	V0VvQfcTJUMkssvLnMV5MO337dGkbpNd8wFQom6S+aZeqHf/JYdAaNeTDY8zq3mM
	rofkJBm+IznBjcgn34id9RcF4n79GuZ8Thl6QmmicpyZaA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8t49p0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Jun 2025 10:17:54 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235f6b829cfso12432015ad.2
        for <linux-phy@lists.infradead.org>; Fri, 06 Jun 2025 03:17:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749205074; x=1749809874;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MUm770nsjTk7RKaqGJXS/UXMbcC3CLIfXaIBHht8qoo=;
        b=gsIBRSnAgbliPRo8mJ+695vsWWUoMPxfQ263foX610Obt8uhCl9gBZbNWWq6Npz68D
         ULhGEGMLlNxMOXsJj0yOUjH+RpFTlGfn7p9tGiQU2uOjIGt7RSi/+surDklKKkOeUs00
         yqLsEMbM7Tr1EcUr2fKlVlunqg3Ocf8ZrzF5buB+fOQ8C3m34on5Eg7ba4V4tbeeIy1q
         RN4xGHu986l5HN7RejffJ/mMyzI01mSub9Sj/FWIt/itot433+Etn0omhgbrAyoLJpe2
         SYYTePgZytctKthiNaSO/WleNz0AzHzff5MIacnUga4K1z79OBKVX0g5DWqValzoeANM
         n0Bw==
X-Forwarded-Encrypted: i=1; AJvYcCXT9JPvYau+21XT5cweyxfIY7RF4kZr9jc370qM5KFiXb44B+Fg13Dz8prCfWuDBDeN2/a54oyugro=@lists.infradead.org
X-Gm-Message-State: AOJu0YxfKVFHIZ/WGlHZvPrW7x7P/w3Ah27Aj2Hot9uISNqoK5CB7SjX
	2KA/41B+xLk78FK6XFd1oUusjy85nrfiPfjV6wandHKkEHQ/MVRL21koR4sxrhS7VB/hQViWay2
	iA1KqYHXI4vEvEzmHizHTISt0DrrHLSSOaVS1sWK0kJBKlmkNe4eB5xeSqwe6NyRK9pd0
X-Gm-Gg: ASbGncu9J4dCecHoZ3by4MjMIt/WFS9a3Oy2PM8xuXkVbtKsY1K4nZeuL3TfQtabx6s
	oUGbGdH6mXQiMww3L5lopd+zaG49zAbUNOYf3p4mC7Q8l22T4R6lcbzgCt4HgvCzEQrGsxS6nAj
	l3KuhdnHYZYC3kr3mqI5EMMg3GwLsUZB9rszinbP83QHpr9srxd/CTF6OiU7hYav7s2rvarQFaD
	FWpPGVo/fxGSfpt4dWg6Q1KTEWeIn/GBpJKmJ6RkBMQZ57Hu/uEeaKUcEJLsWXrLlY1i+LFyf9a
	94TuhTq9UqT5qh+djaRc/sajExdTYxURENPzzLsHMG7j8nyEd7FSLsKh8d4=
X-Received: by 2002:a17:902:e5cf:b0:234:d7b2:2ab4 with SMTP id d9443c01a7336-23601d038c2mr38586605ad.17.1749205073692;
        Fri, 06 Jun 2025 03:17:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWEq5utuN+xciTxdEM9oY6Q/JAcry9JQaMjmy2DyusLiUkQ5pFcrFEA1HGQcbYN9+4KF154A==
X-Received: by 2002:a17:902:e5cf:b0:234:d7b2:2ab4 with SMTP id d9443c01a7336-23601d038c2mr38586135ad.17.1749205073233;
        Fri, 06 Jun 2025 03:17:53 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603077e9dsm9466565ad.1.2025.06.06.03.17.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Jun 2025 03:17:52 -0700 (PDT)
Date: Fri, 6 Jun 2025 03:17:50 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Johan Hovold <johan@kernel.org>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_cang@quicinc.com, Johan Hovold <johan+linaro@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v4 5/5] phy: qcom: qmp-pcie: add x1e80100 qref supplies
Message-ID: <aELATuLue/Vs8lHz@hu-qianyu-lv.qualcomm.com>
References: <20250604080237.494014-1-quic_wenbyao@quicinc.com>
 <20250604080237.494014-6-quic_wenbyao@quicinc.com>
 <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aEBh2xHu3QDtUrxe@hovoldconsulting.com>
X-Proofpoint-ORIG-GUID: 6PPwBxF-NR40sa7Hl6gmxxOCyDVta6Iu
X-Authority-Analysis: v=2.4 cv=EPcG00ZC c=1 sm=1 tr=0 ts=6842c052 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=zitRP-D0AAAA:8
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=Kn45tV52aVggcf7Ks3EA:9
 a=CjuIK1q_8ugA:10 a=GvdueXVYPmCkWapjIL-Q:22 a=xwnAI6pc5liRhupp6brZ:22
 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: 6PPwBxF-NR40sa7Hl6gmxxOCyDVta6Iu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA2MDA5MyBTYWx0ZWRfX6rr6qiKTPkLs
 d70oam5NMSqbDncR3FxKWGot4UkilKqf26aMSmhRBhjNvqJplP9OHCf+WX6wJl5fBE85OeUId0K
 8AeIyMePLU5hVWKtqVTxKS3WaAZDxQ79jp9+WflYbL17tB4kYdOqm0SmjZJR4ycGInQN07MrJto
 q0jz2SmyZm6ZA85nhPC7c5Ldx4Iz9jHGdI6CalxAGmy8G+PkH4HwyNRLUK080lnfzojINLGOKw5
 bKNzXtfrNRXYVHoc8OfJVRcmqBUbDwBau9vD2NBLUn/XEM2kuCxL+Zw5Lnc5K8L18VrPDhjmfJY
 15MUIbJoF2kVhrknTZiQHMiJNMZYfNdezQjb3REJZeKKxxBbmBV+SO+sUdfclVRBkF/wygptaXH
 DNcrCNB6BcBlcWS+Nd01G9Ip+jHhllNta8noO7tTRPEJ5+NZJ18lW5ugP0xkll+WJlzYBkOe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-06_03,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxscore=0
 clxscore=1015 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506060093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_031756_151731_7607C70D 
X-CRM114-Status: GOOD (  25.30  )
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

On Wed, Jun 04, 2025 at 05:10:19PM +0200, Johan Hovold wrote:
> On Wed, Jun 04, 2025 at 04:02:37PM +0800, Wenbin Yao wrote:
> > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > 
> > All PCIe PHYs on the X1E80100 SOC require the vdda-qref, which feeds QREF
> > clocks provided by the TCSR device.
> 
> As I just mentioned in the thread where this is still being discussed:
> 
> 	https://lore.kernel.org/all/aEBfV2M-ZqDF7aRz@hovoldconsulting.com
> 
> you need to provide a lot more detail on why you think modelling these
> supplies as PHY supplies (which they are not) is the right thing to do.
> 

TCSR_PCIE_xx_CLKREF_EN is not always in TCSR, they're custom
bits to enable pieces of the distribution network. We always classify them
as "TCSR" even though they're not always in that module.

So even if we put the QREF supplies in tscr device tree node, it still
doesn't describe the hardware correctly as the hardware itself does't have
a unified structure.

Since the TCSR_PCIE_xx_CLKREF_EN is only required by PCIe, why can't we
model these supplies consumed by TCSR_PCIE_xx_CLKREF_EN as PHY supplies,
treating PCIe PHY and TCSR_PCIE_xx_CLKREF_EN as a whole.

> Also please answer the question I've asked three times now on how the
> QREF supplies map to PHY supplies on X1E as no one will be able to use
> this binding unless this is documented somewhere (and similar for other
> SoCs).
>

PCIe3,
VDD_A_QREFS_0P875_0,
VDD_A_QREFS_0P875_B,
VDD_A_QREFS_1P2_B,

PCIe4,
VDD_A_QREFS_0P875_B,
VDD_A_QREFS_1P2_B

PCIe5,
VDD_A_QREFS_0P875_2,
VDD_A_QREFS_0P875_B,
VDD_A_QREFS_1P2_B,

PCIe6
VDD_A_QREFS_0P875_A,
VDD_A_QREFS_1P2_A

> The fact that you so far have not been able to provide an answer
> seems to suggest that these supplies need to be managed by the TCSR
> clock driver which can handle the mapping.
> 
> > Hence, restore the vdda-qref request for the 6th and the 3th PCIe instance
> > by reverting commit 031b46b4729b ("phy: qcom: qmp-pcie: drop bogus x1e80100
> > qref supplies") and commit eb7a22f830f6("phy: qcom: qmp-pcie: drop bogus
> > x1e80100 qref supply"). For the 4th PCIe instance (Gen3 x2), add a new
> > driver data entry, namely x1e80100_qmp_gen3x2_pciephy_cfg, which is a copy
> > of sm8550_qmp_gen3x2_pciephy_cfg but uses sm8550_qmp_phy_vreg_l instead.
> > 
> > Fixes: eb7a22f830f6 ("phy: qcom: qmp-pcie: drop bogus x1e80100 qref supplies")
> > Fixes: 031b46b4729b ("phy: qcom: qmp-pcie: drop bogus x1e80100 qref supplies")
> > Fixes: 606060ce8fd0 ("phy: qcom-qmp-pcie: Add support for X1E80100 g3x2 and g4x2 PCIE")
> > Cc: Johan Hovold <johan+linaro@kernel.org>
> > Cc: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> 
> NAK, for now, and please don't post any new revisions of this patch
> until this has been resolved.

OK, I will remove this patch from the series if other patches require
updates and submit it separately when it is required.

- Qiang Yu

> 
> Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

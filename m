Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6B78D4899D
	for <linux-phy@archiver.kernel.org>; Fri, 16 Jan 2026 13:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pU+pKTn2sg4s4OXGWgII+9DyAkMROTXZxZ9eUCME8vU=; b=OoDZxQT5wDjEqp
	bL2MRlgyKFRn8uUm5OyFPGAK4lnGyHixu2yPtnmYzrvjT3N0abLsBgE00uabPKaz8dMRyiJrxePY5
	4vqeIrTm02bm+xIdiBnQMGUfzwbtPUNq0RtbpHmtXbUluZVS85UJDtC6IWR1ppKMNmTJOhvtnz+jK
	V0eY8JAfIarZhXvtByLf0YfaHG9zysnlxQxWjx4xlzA4c92/ejy6L00TS5KVCDA6IZt5hfrgmbeRs
	kesz3Ltj5jzmNa92NhmbMZYtWIzemehbwAt8ekX4XpzEsin2zhEC46WeBaY8GyQ1yw4Biroge/zMp
	nnjiecbuceFC8Fj3Gu0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgjpc-0000000EBQG-1nAY;
	Fri, 16 Jan 2026 13:25:40 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgjpZ-0000000EBPk-3orX
	for linux-phy@lists.infradead.org;
	Fri, 16 Jan 2026 13:25:39 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G7cVaA3076690
	for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 13:25:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m89N69Feqk6zBGnS3QVDdgrPq5aK1zZ5zVjNDPweqnc=; b=HZ2AXBWZU2kpQLpg
	NN45Nz7tAuSugBM+AmURkwVJ+Ce0J4zqgjUA6vcTngFHSqFWQOb7VjIj4elT60UJ
	T2858fH4KE6QF6iTedIVXqGZ26zIYjlOqc7SFV8mlALgpNQChe0rctK/g+GzxeFy
	jhKL58fXv8wevGPWBemkLGp8dj6z6u8EcMY+FSdcB1ZXAJu4JtQrxXzvj+TZlUmi
	ddOFS1QkOTd3kfJLWrKUAVJIWFv6nJDG2lNEs+Cg5aY2ILOvx0h0jME3ZrQvEVN7
	CQ+Md5gzBeiy6KPsMcXdsv+am0YPX9vHyxI3C57+7J4t3R72BnLO/PRNcuae8Vzo
	CYK3bA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq98jt8rt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 13:25:36 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81c68fef4d4so3958267b3a.2
        for <linux-phy@lists.infradead.org>; Fri, 16 Jan 2026 05:25:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768569935; x=1769174735; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m89N69Feqk6zBGnS3QVDdgrPq5aK1zZ5zVjNDPweqnc=;
        b=dih1Yk1EDCjvnTqzDfXOf2QFCGX5MYKeZTaXKzgXcBSvcF9B5oqYXCp5zBWr0smtXM
         7re39kwRvSsp9iNfzfOHVNdteTgdo8tt7Mb/R3NRv4nLQ3AcVtvT+WQB62hfQsLZ3ppJ
         uN5rdjuqWSlDHbRXmRRJX/+t5Qx4qc3h2/e2JRDMkimx3pVFuRO3kbwbyOdu1JsZgSBQ
         jKGXYLFwJh34i0QA9i5s9spuPBcnvUbxV2qP214nOT9FEPXaw9KpMrD+tc1yeqhqO2Id
         pHleH+De67vKQN+Y6zr119LUHwwljyQW9XxGAWZz2xCZCUcF4YmnDwE1kvcmvboHQuEJ
         zQ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768569935; x=1769174735;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m89N69Feqk6zBGnS3QVDdgrPq5aK1zZ5zVjNDPweqnc=;
        b=mh22lrCY7m/IZisHtvnJA/Y6z+sr4tr8tnJp1rQxuVYAv8A7huIy/Y7FS7nmYCdisV
         G2lkobrTAJeuYUaRWERW/lUGRPmCAvelzsd4Yw+j2z8aiTyquR0sxgbcdzbttJbifo0T
         2FisdOr/AVUS50f6B2vcAQ595Mmz4kxvDgGJn351N2Mb+0NpDP2Wj/Bo9Nav6BG1vQg/
         SKug1J6sQOLLCnPywBzSWmmOpRnYsTmXechwy6n12PJqVzieLWUDcZik0V4gt+HqpYeR
         8eLBGGPMqlNJtiwIT+dQ5JA47vaRstJz2gNZy8QfWQuFnOm0i++F7OkerdYOYnmN8ll/
         ExMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXvApOOrlJLr6xOGU56sdxShqpqLb2D/5/HwbwglJz9RIpOYArhp0n5qD/Q2qBgai9wK7iRKtfkSLU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoE1GUHz0aBaD+YYYQ0oOFq851WeKhQAG0O4CMY3PQrcuwVufq
	efNeND8TW82SEWLMHdI59rS7xMD88fFvgahMAKM1Ag9TZEdcuDz4tbdxLTzNiZYUJuj+NPvRG0F
	MlhfHNv6twF2VRfGu1h+xKzpuNDdZAw475j+SlpmeOACAYaqkmGI5S1LrjlmYgv2IhWFS
X-Gm-Gg: AY/fxX7JTkzfGsbdxC3UKNEBS0wQvBJXXMkV5tgzOrmBu6//kNIvRXUJ2WcBgRIw9k7
	LUm5ZX8lVJU/DhvywT95O11WMvmbTzVWJ1RhbvIXLpYJLuf0gyTpXMhK3FVa1fTZq9Y8HUK9A1t
	pCyt9cRv+HOkB7tdVHAL2O7wK6138NVO1NH1Pqe9nHe8FHaAjN/kMxU6oFB/+Fov2gLzc6iKGS0
	FNnQka5toFo62bUMsyn/MVYFX0sO/8g0ZqcV2PWQGCqXwdGGvarmzuETguye6h72QYMKLc16f7B
	0dY4aM9SGHlnzCwz/8I0sw4UxrkGHlQh0eeKSlLHwWRoMphhFaxc+XeN2in1HKgVBbHB/7HDkh2
	WlES0
X-Received: by 2002:a05:6a20:3945:b0:38b:ebaa:c167 with SMTP id adf61e73a8af0-38e00c2ef84mr2544602637.20.1768569935111;
        Fri, 16 Jan 2026 05:25:35 -0800 (PST)
X-Received: by 2002:a05:6a20:3945:b0:38b:ebaa:c167 with SMTP id adf61e73a8af0-38e00c2ef84mr2544564637.20.1768569934560;
        Fri, 16 Jan 2026 05:25:34 -0800 (PST)
Received: from work.lan ([2409:4091:a0f4:6806:6031:39cd:c600:2b20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108b252sm2138072b3a.7.2026.01.16.05.25.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 05:25:33 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Google-Original-From: Manivannan Sadhasivam <mani@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Wenbin Yao <wenbin.yao@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org, konrad.dybcio@oss.qualcomm.com,
        qiang.yu@oss.qualcomm.com,
        Prudhvi Yarlagadda <quic_pyarlaga@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
References: <20250825-glymur_pcie5-v3-0-5c1d1730c16f@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v3 0/4] PCI: qcom: Add support for Glymur PCIe
 Gen5x4
Message-Id: <176856992835.23711.2150005271893614146.b4-ty@kernel.org>
Date: Fri, 16 Jan 2026 18:55:28 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=asW/yCZV c=1 sm=1 tr=0 ts=696a3c50 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=extm9pdXzRddJ-xlDaQA:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-ORIG-GUID: -Ci1LuSG8QLzigKk67obQuHegtn74fI6
X-Proofpoint-GUID: -Ci1LuSG8QLzigKk67obQuHegtn74fI6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA5NCBTYWx0ZWRfX7mFRD+0ALREj
 m5NRDYdTtAciVjIdsW8/ldt1mcVKfJeCgoYtcyBYJimGrqX24vulUDIYP9vSXk7wnYMYDeH/5g2
 57AAHa7pCGxywyp7S2nA8uJJpX4mwI/y+KBQZ+UOoZZ6ddOuhvN/voRQRPK9rTgBYLsloFzYx+G
 DHHKAzbOMK9hVGzFFBo1BDW/yC7tUDUppUC1K75kCp/eoyKBohwMvwx/O5OjxkHUS6yKKCEKHMD
 zbEffNYyQwtT421k9VlZxfE0KDiAdiA2RTAHETIsRHT7kUMMc6Wb5G+qPu7rPR2t6GsEq8nqjQ/
 xohaVxvFgCmh5q622WNmtAsI8DxWShcsy1RrFs3yMDOUsfA+zO/h08YFSI9gSlCXiu3P61/TrSt
 wMaXAcb77e5Vg9aRBXChOUMqrnWPAgKXBEBoFOBuAL/FEtrU+dmQLuQdpB5DWHuGU36Tcu0xEgY
 TbdSySB9TX6a7mkY0hA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_05,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 adultscore=0 malwarescore=0 priorityscore=1501 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_052538_103094_D979CA3E 
X-CRM114-Status: GOOD (  10.46  )
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


On Mon, 25 Aug 2025 23:01:46 -0700, Wenbin Yao wrote:
> Glymur is the next generation compute SoC of Qualcomm. This patch series
> aims to add support for the fifth PCIe instance on it. The fifth PCIe
> instance on Glymur has a Gen5 4-lane PHY. Patch [1/4] documents PHY as a
> separate compatible and Patch [2/4] documents controller as a separate
> compatible. Patch [3/4] describles the new PCS offsets in a dedicated
> header file. Patch [4/4] adds configuration and compatible for PHY.
> 
> [...]

Applied, thanks!

[2/4] dt-bindings: PCI: qcom: Document the Glymur PCIe Controller
      commit: e74887035fba99ead63235740908debeb1326dad

Best regards,
-- 
Manivannan Sadhasivam <mani@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

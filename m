Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68AEEC61DBD
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 17:03:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/pl+prUnNti40jLSdB3Eoz6nB6f8KMU7RLodc606a/Q=; b=XAM1yt9WW1TLcl
	P/5PoyFSumrYGpQgPar9LufjvkpY0e9JnjinbhKaVawHyYmTRZ931/1OeXTyaNuvwD8lJEtovoKbF
	UD6RvisGQkjPDMotb6b6MYXWc4TLq43rUkDTIj/5M9IMA6ktkQgHmjXZvtS7ZmlqmqursN7noYjAZ
	63v3sLgtT1FjJ/lCff+tdHLjU0Yd9rBUAyPrjquLoOxcmByR7el2iTykDPrXLUJQDyPFFGF0r9KRW
	zTaT4EiLt5ytKb/07KS21wCCag+C6n/eNxebyYGpT9KrBhWZjuvm3B+1B3ufj4QX2dIrIG6s++Lqr
	mbPBucs/OkS7NqGOmcww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH2H-00000002n1f-0W4y;
	Wed, 26 Aug 2026 17:03:37 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH2E-00000002n1C-0ZII
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 17:03:35 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67QGunDO1522478
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E1yggnaC19Gp1PuLDDoUv9K8YjHZMTLGQKuxWhz+C0c=; b=b1atVNFcf7vwR9Kj
	TTKCO3Z39yxNDHgW33D7CZFihE15Lon0pTc5r6/LPJTvhRz5wImmprLb9mVlFfEl
	fT2UwU158dAchNPzdPa1fzn8tqkkUaA49rFKzkeW9+xlrLyUtGzopNLPRUJQms+Y
	Eokrr35qgcUSvm/8TvxGG3HScjrYJnIQbB7ovVa19z2uudYXH6RWcFDYjeHNEtqH
	BYMPiThEyM+1qTz+BhXVBR+3wGv3oV9z5c0kOKQelN5bATbljYNuie9z2NEj+06B
	1eNrlqeksyRG8bDsfTrH+umDALynHyYJgwdLHVbl9a2/FkG/OyXvUts1OfPzsLOK
	bdaeWw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g9r0k36wc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:33 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-cc1cdfb337eso695706a12.0
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 10:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787763813; x=1788368613; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=E1yggnaC19Gp1PuLDDoUv9K8YjHZMTLGQKuxWhz+C0c=;
        b=JyY+YtAltP4jfiy4xGCk2Apa6dAWX44jHrsJFHDa2X2+Lby05DBt9g+oeh4MJcecq+
         oFRUM7p34Frgg7+iXfHJCyEfjTs1RZpFkLSI2hcYOhLhwfMA7Yk58je3hQVqSlpI3bc7
         coSkMgrka004zYI2cVCZxAc2/tS+PIXjyRpfsTq8j5hkbPAcOdPjM6pftaOge9d3qsGz
         A/huzVjR76Z3AMuTR6reyx8TyFkzP4xDVhg3q1yIORp21tzKOTTk+dcy/YWJeNdsFan1
         Iw5TwVXMN75A1sxqHgk9g9aAarwcYzE/ly3qS69thiuhqb3+YgWKma4lE4nXh1w0DBvN
         mR8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787763813; x=1788368613;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=E1yggnaC19Gp1PuLDDoUv9K8YjHZMTLGQKuxWhz+C0c=;
        b=p3SUEAHdzLkCUPkYNbo1leal5BKWU3O0AXU2hgAaBl17tFbquv9IhQFlHMGJ9mQtF+
         4oAeSlqn7pa+3PWoU4UQuUUicBmG0nPxCwCr9CnaCWteZsxskUxkTpUG2nGwSOXkehv5
         huJpK3EX+nmv7Mc3UQ1gUaPxG4UwHkru3+HOf3qa4Ws6bDdAYNo6W4LInExiPEzaNHQY
         AtoBDStCrx67cq6g8njGidQDnG3ZR8tyrbMGfPvR2PiRAtzwRl8rV1vbdqNfXThgL6lz
         DaLwdLi90TUkKHclf5/ciKVI+vGod+1ujZdyZ10FkiVXdbAMc8mSJFy1dzIkUwpuar0o
         d81Q==
X-Gm-Message-State: AFuF++lRPY4iq9ZB/hi2Bi/gTnXqGyARGNL6eEyk4jWSuj5vLbZnGecz
	K/EGfU0AHsQX062gTlws2PwvTnzcY66yAwl46gU6m7XfY2G40EBe71QrtMWZyIda8TWFhudevP5
	V5b0B4ICAOLeW9VDovi6tf8JVMjJflOb3lFB6KOQRD+ndFABZw5FL8tViS7KFUKWm+IGl
X-Gm-Gg: AR+sD12IDwGuKEyI2rxaeftxHXzxWZADVF0ZESxnqj6zqDfKD28g0dzUKar76mtNEuK
	iXx6/k4o/qHKT16BGxGVSZEF+bBNHIFh+oAZ37uLvanoqHnBVyDTVk68tOkV4NDtpJLduE0wmsF
	zf9Tm7gXrtCnSnmoXuTnBV/sUwGnbTRe+iex9wrikXOWTHQAkGzhYWbHBzXDag8L67WaYO9tpGw
	Yqx+EOKIACLrXobLxk9IVv1FgG6I3yAdoSU5mzryNnzltRz09mTYTvrkJMvjQGIEncmMxh92gbG
	BIyh1DtNeJNrJpQBec0Mfp5fAep6USdPfaGgBjskOQtrY9Pes27zDxQA7rloUTsX9DQIEifi9O2
	HY7D3ZPWoiBzOlijo+4TmxDMyy+33SRX+lCzXIFQOmknhEWbyjGdkpBMccI+nSucpYgNxdw==
X-Received: by 2002:a17:903:8c5:b0:2d6:3c2f:69b with SMTP id d9443c01a7336-2d707aeb1b2mr176404065ad.8.1787763812717;
        Wed, 26 Aug 2026 10:03:32 -0700 (PDT)
X-Received: by 2002:a17:903:8c5:b0:2d6:3c2f:69b with SMTP id d9443c01a7336-2d707aeb1b2mr176400575ad.8.1787763811597;
        Wed, 26 Aug 2026 10:03:31 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d70498ca3csm9938285ad.31.2026.08.26.10.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 10:03:30 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Wed, 26 Aug 2026 22:32:53 +0530
Subject: [PATCH v6 3/5] phy: snps-eusb2: Set phy type to EUSB2
MIME-Version: 1.0
Message-Id: <20260826-eusb2-interrupt-v6-v6-3-ae2601cfa80c@oss.qualcomm.com>
References: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
In-Reply-To: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787763791; l=786;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=JmNFZyPbdOmvWrGytmgIq+OZ/ncJmYtkqcaiw9+0EZw=;
 b=Thl+MigrVDnRdnpf4myP9BVRYDtHiWYAUHR1335aGtIbK3xOLkXgyVazvZ7swZ06H2nxhcsXH
 oqB80L+BqkQDO+CEySKkSIK/UxAoYfhrrsRERBKPEj0XHDgLJtm9BXe
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=fPEJG5ae c=1 sm=1 tr=0 ts=6a8f1c65 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=ugjOiUgvsQrqGD8bgbUA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX19us+BON9c6k
 UAbNvZNksdIJmILgbLhb76hnJOxr9mzP7RluqQY/nPOE/JDvg28SIy8AuGAMbIllNxihb3ePoMN
 /Rid5pOW0CJJRNzbXgPU3IGA9zLttSo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX9SArP3350Idu
 y4ULEDcL3ZhMHgTzH1nfuMBcouI+QsBJ6Ju2yiCZUmRwMH336ldksUbzbSvy2q2tKFS0ZMmw9jU
 FY0YsDHsvEsZ7RBInYkjiAzYibt1QFdeWer9soGe+DzL1Clq94xP9vMJOKrq/hzMzldo58E39WO
 Q9fgYu2mXxP3F+nm86vPcLFq+HcG83KQp3a2zczTP0eS1wojvf9w4lfSGI1TwyOYNfTJ6hJStXY
 ytA6kSpq2cY5ove7tjM3NdpUa5TDYg6/NuVLXrsktk/KIzopQQyRBONqurz/QXKOu9FXvizdcIf
 HGRzzryiSXWcgXiKn4WnLunEpIxnWhxPG7vLl4rTiQSs7e8OXJnnol6y0/ZI5yl+xEXkbw7hed/
 MuZSKlzO3JIjmbAUWqQ793ws1mwM4JBsV2ZZr5eeMt/nRlw1cwdF7aisp2AMk97Kx7SIw6pCNLo
 lJ8E3B2EcJ0ngOfE+KA==
X-Proofpoint-ORIG-GUID: OL5ZD8BGLVVtKz-NIWlix5r6Cu5KkyfW
X-Proofpoint-GUID: OL5ZD8BGLVVtKz-NIWlix5r6Cu5KkyfW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-26_05,2026-08-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 adultscore=0 phishscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608260141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_100334_314125_7A2729C1 
X-CRM114-Status: GOOD (  12.46  )
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

USB controllers like DWC3 are agnostic of the kind of phy (USB2/eUSB2)
connected to it. Set the phy type to EUSB2 to let the controller know
the phy type when queried during its probe.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/phy-snps-eusb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index f90bf7e95463..fe4ce9d752f7 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -597,6 +597,8 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 		return PTR_ERR(generic_phy);
 	}
 
+	phy_set_type(generic_phy, PHY_TYPE_EUSB2);
+
 	dev_set_drvdata(dev, phy);
 	phy_set_drvdata(generic_phy, phy);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

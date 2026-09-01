Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC5D1C61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 06:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cw+d6HeOL3AIta5O4LmzRu0reka3ANtrxxzH87r9AOE=; b=A1dQP9W8H5XlC9
	tnE+i4xKQA9GHjDBNKC/E7ylUNFabRoVIE/xLtRSgXsbpAxiPoIHYEWGBVQGAvuVK7eCu7DL64nv3
	HT7VnIFfz8ieHNTqBlE4kPprDXfNO0eqcbXK6+QP6poF9nD0s8nhALO9qGnL05OwyuWhbaqJWA1pw
	OgpHCuZVVBT2reyynsK3jI2u7LnakrcI8rOIEqaTQMDj9YUlGic/qTRpiQmK1o7tHcZfA/LJfuWht
	69vzi2O1/ErmY8F+bgETSsLQqkZGXQLn0QNckZMIVXFTw2FBDC9KYc+05wF3ea7Z7zxEVmFKCqybZ
	SkAjb1DgsCx4Mr9JDCog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Hbq-0000000B2em-2OfM;
	Tue, 01 Sep 2026 06:04:38 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Hbo-0000000B2eN-1qVm
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 06:04:37 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6810p0jH1487672
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 06:04:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Kp/nji48OQnOcUeMn8Jqrf
	83t8bcwfGSAcwU6h8CLw4=; b=DfMzcn60Mz8fHAz2tGfx9jhsvVNy2oJ5GAczvS
	uoORFzNEjoR8h5EYmZ+U7XeSewKXMLkGRyrYZAq41E7w4tRQf/Xjuz8/+M8s98c1
	Wewct8hCBjmT5o0zYOkF5x9Ask5f/mjy8FZnbg9sa992Oh6PnLUZXHydww87AQfG
	bZW5l/es2CV7rB8+OCguMESqnCDCgKk1voEYuv58DRFwwKEC/w+utqh+GO5kakmZ
	xfVet1hTij3+jCb9M/lqfxE5a/EelBJYhGbDDx2G3PFI6rBzwFJudW3A8dBvKqpk
	JM/6y3dGcegbEsd5UWhr9ivP5b+QcLdlkUiF3j/d2P5ovOqg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdfchaa9a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:04:34 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2d02df2bf09so42336345ad.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 23:04:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788242673; x=1788847473; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Kp/nji48OQnOcUeMn8Jqrf83t8bcwfGSAcwU6h8CLw4=;
        b=HuJM+HwqzL+ElGAjntC+rfQQMXufqT5f8thHt6At6Fi+sfmQM7x6LqdBZG177b3M7p
         ofH38cNKxOuRYpeRHgFSEzvUtC0h3Cw7weW3wTniEDBXDC6gCLya5z/AFPCi4Ve4kWVb
         ML0XawPtFM/qNdCN8LWMF9heYdI0Bs+rdiYMasmTSyg8Q3NA+JzYfMnWCgmqZAd33cOF
         Bxp07n4clcYobrtG1CShoXb2e4d/tEVFlAZcMXY4PvaBkJ1MZFupbTFJxr/f25TZP9O9
         Hspjug23VOXhCqn1bUjyKAYVT19F357BWCBIxPx0lY5a94QUcwkQrFhI+oad7wMTDc05
         t4Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788242673; x=1788847473;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Kp/nji48OQnOcUeMn8Jqrf83t8bcwfGSAcwU6h8CLw4=;
        b=ot++GAOvVGCD+6/It4u/66g7zjdMYC2aVpkYiFS18rkHzvRNIPcMYaBkEJGJCxFCV0
         YzLT3JjrQAUbmIgtMkroXjOaNZPWQ5or48Nl0lr5FTgb/dN4aWN5TW6EuWEWvYibD8FD
         Ql8kP9wyihQvgMxmvsA05B7ActsKl/DuxCKB6s2V1NtpJpfu4FgcrQ8+LoWlZTZybADW
         TV/oWUIoz3Z+F/kmUw8hSsdJa1lk5RzFtJGEGehkndLHV/y48r/lr4MTPA6p+/+JaLTi
         Arz41khXBVCneGHFh6ffCWqz3Z9vZMxsUyjeYdbn0aMkHYaHo6HdVfPkYzWdw6kG/V5e
         tOPQ==
X-Forwarded-Encrypted: i=1; AHgh+RopBTKUblSdTkxV5LGsdRUwlCeTncUa9J/cWjuLFWSZ/3WvsjsNLiTRfDKDzp8PJFKXPCG9X1Tgkjg=@lists.infradead.org
X-Gm-Message-State: AFuF++kUqSa9OV8Z48dYPWpFwdV1QnIdDtnRcluU+YQD/nR2DWD0jPJT
	4ZiFSJ1y2N47u8Xjy4g75TQFL4+u0NfrcoA0MA8ykXofMKnw5BendYCJbzdcmqHQLSX+ta9g48V
	PkGv/M5KcLJuKXLFoBAnyKCMpAiH6Lrx5AXxuMON9JkV+gAqAr7Wsjp8EIGxR+ztRg7ls
X-Gm-Gg: AR+sD11ZltTSKuvKDCga0BPx3Nlj/ypDnkvGILqugg2B4ETKIlCKPTsXBeA8EflGDZ3
	WEd8noSS77AzMZM3F34Lh4HafSVa0Kh2W6rhZX0PRFDg79ez3M7VJ6a3Db3WKsmFkgz9IN3Ii63
	jVmjrqV5XSn/cBXzgknq9kk77Cs5yW9tKSozfjEAZ4ZyskGUQ7rm3wCTDUIJXlERYopUS80a/hf
	z9o1IX6VX6zF2Upv/T8T+BIXDwULjFa8/brrcpNk2M35oRY699k4NDelG9OlEtYTvu6MxB5SC0A
	7oYZLojpZg9ZrMizDdoiC8xDA2eoSrITEd6kZbm97RL4J+dcaUumFv1HPpdi2qq40oo/6Tqk5fp
	A5xZByUwip5jtpqOmVfSFkuOPpPd0yrhLg/PWgFnDpS1K0DWNKYqmtzW271ZigoD06ch/Fn7P5C
	QETaunCcRakOBbqC2vZIvXuGckx70Ncg==
X-Received: by 2002:a17:902:ce91:b0:2cf:8131:75e8 with SMTP id d9443c01a7336-2d94a8e0e50mr65327415ad.13.1788242673136;
        Mon, 31 Aug 2026 23:04:33 -0700 (PDT)
X-Received: by 2002:a17:902:ce91:b0:2cf:8131:75e8 with SMTP id d9443c01a7336-2d94a8e0e50mr65326855ad.13.1788242672692;
        Mon, 31 Aug 2026 23:04:32 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286fa20e2fsm35855800eec.28.2026.08.31.23.04.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 23:04:32 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v2 0/5] Add support for USB phys in IPQ9650
Date: Tue, 01 Sep 2026 11:34:18 +0530
Message-Id: <20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOJqlmoC/y2OQQ6DMAwEv4J8blAwkFJO/UfFIYBbIhUCSUAgx
 N8bQi+WxvLOegdLRpGFMtrB0KKs0oMHvEXQdHL4EFOtZ0COghfI2dhtTIiM2pwajg8Efzkaeqs
 1WF7VxYam2cvctYRaWmKN7nvlymig1bFLmCZwBjplnTZb+GJJQuJfmIXCJWGcYX5vRSFTTHj91
 NbG0yy/pzP2A6rjOH4QiWfBzgAAAA==
X-Change-ID: 20260820-phy-664ed5ec0292
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: l92GNosnT9X11cqufFOlBeth1Zrs_Q28
X-Authority-Analysis: v=2.4 cv=G9Ms1dk5 c=1 sm=1 tr=0 ts=6a966af2 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=QVgSJ0PFQKcnxtkCEG0A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: l92GNosnT9X11cqufFOlBeth1Zrs_Q28
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA1MiBTYWx0ZWRfXx+vbNv+Ey5/R
 /97Aww8vMsilQh6HfTJq8OWElJQwOTbZLYlj4cQSLuAwSGQaZepJVzyZ1yMWUBIkZZBCn0nUFl3
 kAYKu0hT8gG1JW26twvo2oujIK8hNjo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA1MiBTYWx0ZWRfX3HniVl0V6rS8
 bsO6EmE8501jZFd1Uq19wXcQ/vcY4agloyYH2T2PZYlhIjka3ZJmKV0jBWm1Z8RSc+RVNic0sVD
 t+UGLegocr7rRLvfWBw2n0E0LqyXlPrxTxxtXIBUoQRdAuJNIyvCCr6UiT1Jd9YGkkGXC336cnE
 sZw39Ct2hP+L3RhGNIe2NJE7NOAAzfASVP7tDs/NJMVVj/HgFXFoBoFwun/Ou73OI6jAMzaGV7J
 O6YCDkDwlf5MBqZbhR53u4ePKFSXJSSSI2MYF7jM/VWgGdDgEOFbxtKH2rR2qErZ0moj1N9dH08
 ebpruClhrbxMSwtRkxpz7PUTu/C/r4uH7EBJpXusxHmJMdanPtcel5vj1WM+X+KkOGldEw6FWyZ
 Uef3lVMKv/Lf9ZwQzf/AMLPxrCz3OnZ3aVHO6bDhj2ZQ0yCBic+3iTU30DsIwYhMjWr+J6iJLhk
 jxKXUXDb4w6Lo3a1PGA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_01,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_230436_651811_2B97A332 
X-CRM114-Status: GOOD (  12.80  )
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

This series
 - Adds dt-bindings and driver changes for the high speed and super speed
   phys in IPQ9650.
 - IPQ9650 specific init tables to QMP super speed phy driver.
 - The Femto high speed phy driver is refactored to accomodate differences
   in the init sequences between SoCs first and then support for IPQ9650 is
   included.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Changes in v2:
- Pick one R-b from Krzysztof
- Use qcom,ipq9650-usb-hs-phy directly instead of adding a 6nm compatible
  and falling back to it
- Change pre/post to pre_tuning/post_tuning
- Use array count instead of terminating entries
- Fix value/mask mixup in 2 places
- Link to v1: https://lore.kernel.org/r/20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com

---
Varadarajan Narayanan (5):
      dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3 PHY
      dt-bindings: phy: qcom,usb-snps-femto-v2: Add IPQ9650 compatible
      phy: qcom: qmp-usb: Add IPQ9650 USB3 PHY configuration
      phy: qcom: snps-femto-v2: Move PHY init registers to config tables
      phy: qcom: snps-femto-v2: Add IPQ9650 support

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   2 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 118 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 188 +++++++++++++++------
 4 files changed, 263 insertions(+), 47 deletions(-)
---
base-commit: c7507e07687010738e5f16926078f78ac0d6509d
change-id: 20260820-phy-664ed5ec0292

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

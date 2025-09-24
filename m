Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5017FCAC5A5
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zwNyy9+JfUitW17QjEAPW9JLQlX0asMI8TvNmfbfJ5w=; b=UKcB0XJeEZVtYg
	lyvJIZ/TBvqwR+BwYjg6Kzusew67emS132Wyg3frznKnkEtSBDyTWR0jUBMyejEswmHo0koR4nsvd
	QATubL7lFAtIaCP8DerPJe2AYt2z8xaPFwH0cfe3ZG3WFZT3dUFlcHbsXr4gYLSaVmaRknMQuZi0M
	ZShU8FP6ydm54m7zO/uzNBS2ydu4FHBnkL9fzQEnOH0iWjv6/A/aQtteJPk7FgKFQndL3qX93Rpp8
	IYqqKPIkZuTwt3wDv48oldDrV4OXzk7b3PsmS9BYaJz+hQDH45iajsZs+m7Ma2GQfnWEf0+y3usPv
	qgE6ShMAfLkhooT51Z0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z19-00000004juj-0L1k;
	Wed, 24 Sep 2025 23:35:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z16-00000004jqj-1aaV
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:35:22 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCeVqp023770
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QaWO9DEgDqVIwBTC8sgSyuuxsW+ioYv5Qng3RAcDRvY=; b=X07ZGBNhrkJS4Hfw
	hG9PrJmBLalpsAsTYTZwFlUwoy6qJc5mjZjhZoOq/b73ACt7C2QLh+shY1ijYTdQ
	Kk+6AVuaqCrIxJnyrkqm3Ape5SVp3ZZmUa/BEhQPEWOqnttXdZkkikb73tPuRIEt
	svuuBStU9+sgTRYVI2uiGhuCJ2lPw4l3ZyVJXCiLE+JoLOAmHo5HGWKvVBZgNQOu
	22aMbLxf5fzM55mYVbo//OPevCskz3au9EyJn07rrW8GgDiMiZap7ZrpgEm9q/b2
	etH6I+p4rPs4e+u3NsEkxtXcwsW0p7rY3IbnWvyXXFCI1y20prNa8DFlShQt/2/J
	I+OM1Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d2xr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:19 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-780fdbbdd20so315432b3a.1
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:35:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756913; x=1759361713;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QaWO9DEgDqVIwBTC8sgSyuuxsW+ioYv5Qng3RAcDRvY=;
        b=Ahd5B74DlDkCT7V60/UTeNUUrobTqVtqUDKPIPPMwzUQZrZtfnnU10tQ0koHrpavaS
         BosJoL4t5v2iFdVtqA3Syt0xSG+IOhlBCfpsA1tx+mTvEvK35qWY/rM+hFQRPHrZAf+Q
         Jc9v+A86oTPcVDAGtQUBUD//LMDAARHh8Ka+zOzNZcLdXWXW6sXV3ECV4CwSme8E3g7m
         qOXlebWfXIeHWsBon0JdWJwB73aQ/k6LnvOSxT9sZPu4lvDpz3rRarSJt48rTkf8gQFv
         IJhsj/88fLHnQihNFOuvxqPhYs1zz5BtJq0v9RIospkig9XBsPAVjp+C0o+219uuIKtC
         Buqg==
X-Forwarded-Encrypted: i=1; AJvYcCUEnenYkkzb6oNLaF2/uUj1hCpMrM3OLY0kT0BtB+XMSZS4LQ58auhEZwFi31qnwBcjs25483BGA30=@lists.infradead.org
X-Gm-Message-State: AOJu0YyoYLyn2Fx86aNygQBJA+IG++KUmDtvnqL99nyCEAKqMKo5/GhT
	QG784q04xEwTx9ieuZtwayg9eW6dVuENeF2DrzoaJ2cGyfOlMI0A05GlCSMV50R9VdprP4PE17w
	NHJMJ5XPbf/HQ2YRe6176F7BzOi1cUMxvfIR/p9juNToqGUfKjtrtEk+yv3ZKIg8B873b
X-Gm-Gg: ASbGnctJmvJenm3JPCDzNq3CB0djHgS+zmApUm9a6H5+hlCKsAnt6jQdc5Yd4YqJ/NS
	SSuKm2lXdJjfFuqLvuuNkML43csArLKvZeVJhL8aIFnCMOjIIEfSrl0OqEZZ8lfqsxxQm7AB2Ox
	sgo7ntsT7yJUgKPmJ/v3LinciYyf//RwaETYMs1VKGkDntW2z67jz/ySZ7lfsCED/3w0CSp6QQy
	aMiICpNtCwHrotQ277c86z53GZfMwBU8UY5ehs7L1BiYp/E3kQZ1AwXSxbCVTrfyGOmfc6zelzM
	dF/sjcaygSv1ZyatjZA58mELOH7eXELRH7oyMaSIhOt7t924zwAi0ONVE9n8TZ0GQHn7Cci0UC/
	3Plq8DLi5nN3xxwQ=
X-Received: by 2002:a05:6a00:3e03:b0:772:45ee:9ba6 with SMTP id d2e1a72fcca58-780fce17efbmr1909184b3a.8.1758756913519;
        Wed, 24 Sep 2025 16:35:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEBpn2lzR5gwMTN21ScTg1+Ioghs8Ao0Bl/JBGqmTWGzBcRYnazeZu1NEI/aAE8+KZ7s8VCEw==
X-Received: by 2002:a05:6a00:3e03:b0:772:45ee:9ba6 with SMTP id d2e1a72fcca58-780fce17efbmr1909167b3a.8.1758756913098;
        Wed, 24 Sep 2025 16:35:13 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:12 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:34:57 -0700
Subject: [PATCH 4/4] arm64: defconfig: Add M31 eUSB2 PHY config
MIME-Version: 1.0
Message-Id: <20250924-knp-usb-v1-4-48bf9fbcc546@oss.qualcomm.com>
References: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
In-Reply-To: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=989;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=WnYe8cHS28Bdfzb1400w3Q/pQBsMgEBstbc7oiSATRU=;
 b=7uAglFkbwYo4jHhD7gwM2JVXFmP/o4yxCs15lZZSvumjLdI84vH7Fpy9ZL40trCRHSUoqDUDW
 CEe4pD6KhtvCG9NhhXIm71MfIYHuq4t01BYmmCRhc4C4Hro4PFs8IQP
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d48037 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4ROhr7NTa0bsJorruOEA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: Z5SmOgExQlv1-a0kC-Zuqrm7SOv36C4m
X-Proofpoint-ORIG-GUID: Z5SmOgExQlv1-a0kC-Zuqrm7SOv36C4m
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX6M30v5W2jHuM
 sfVanSZijYkz87g0ZDFzFdqYvqPjD0vw8y06ev1/f60qUvT9YspsWl8dlSiZ2M5Z0EkGjrA5J2w
 QkISXwHjAubpFQX6xLg8VMIatBePrxRdS6IMW5utktZ9QcXj7BNCcrU921E7TdePsKTq76dP9kw
 5OFKa7S30D1V98yzIvt/ivIa1C2QCOCev4hqpZYVmEkPxsa2aHUSMSkDZ3DWG9yJSws67HgM3fc
 lxfSJmQtFh1h02na/acriFo8puWDIV6FpNP3Fs6hxyKOH9qtMhANiKGsLyVrn1M0R+wPPekSz1T
 bmhNtFxw45O//q/rq0dCKDnstZhOnCZJCan8B6XDlLHifOpfg/074JNh5CEwUVK6Nf91h20Lh0K
 Sw7LZSkq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163520_543188_BCF5072D 
X-CRM114-Status: GOOD (  11.50  )
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

From: Melody Olvera <melody.olvera@oss.qualcomm.com>

The Qualcomm SM8750 SoCs use an eUSB2 PHY driver different from the
already existing M31 USB driver because it requires a connection
to an eUSB2 repeater. Thus, for USB to probe and work properly on
the Qualcomm SM8750 SoCs, enable the additional driver.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e3a2d37bd104..24b1c943a7e1 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1641,6 +1641,7 @@ CONFIG_PHY_QCOM_QMP=m
 CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
+CONFIG_PHY_QCOM_M31_EUSB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

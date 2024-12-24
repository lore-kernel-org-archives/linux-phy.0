Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BEBFE77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 08:46:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XaeExrIHTN/G3oSuAsU8Bgs3jmUeCmKRGGSJ7HSRbqc=; b=QHabmQ6yPyDHqu
	mBDD4cbHV5Srrvcp4yygnUOmNxc3mTvzC+LNtj/INXtLmiZlqLj+VW4m37uZIaHNZBwGBp325phP3
	0tgAX9KrqDgsImNBQstWFQh2xVM8srTypqy3l25Dh8+lc06Rx52CAVknxCp0Sy661Oba2wGOap7j5
	MwC1s5z6OXWT48A104BEBvilH8Em75XzNqK1pN4ht0YMwDr6Jhc4pLBjQnMWX3h9aYeAZjnBW0gu+
	+nVDDoNNHRYxeZoeuW9d39EuQEusHghi8A2VlhoueNVp3zzTWfoIpFL5P3/J0t8RIdk6vJKQ7qIoc
	dfDm3ANvMI5od9NkUMGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Z6-0000000BWfC-0zBY;
	Tue, 24 Dec 2024 08:46:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Z3-0000000BWdt-1yl1
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 08:46:54 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BO4RhLO000893
	for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 08:46:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=suI55uQNzGC
	SiQih4YuTNalcRhTRpBC18Rzl3f7fUjE=; b=gs7VcH9cb0WKlxVuEkk6YPCR+th
	7pgopASOK2rGRLaX3o+HJqmIiptGf/hxMHYvNK8ZMfLw1IjDBtGVO29BAc/MO2Gq
	w3TAJlQ569k0F2WsNrk96ZpGFgu0VnJfQvEbxKnoR2hFoz01m86HR3AP3ZBTWJ75
	0R3EWaaJQ5TU9qVwFNLQwo4m9OWnSv6UbE7GdxMiTBfNtYtSiyPTUo5s/X1cPYOv
	VekT2DG0y9cv+NNGHvPxteJoS7O+Z6iGHxAsG6JHvVclYycP0Vvp9QuVB84fD32q
	2MPL0GLymdNNcISV37olrTqVUZLY/CXnOfbWUHo/bSh4q+YwnvEbgZKsLYw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qnxxh4tr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 08:46:52 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ef91d5c863so5250139a91.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 00:46:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735030011; x=1735634811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=suI55uQNzGCSiQih4YuTNalcRhTRpBC18Rzl3f7fUjE=;
        b=gBRr1yKElvMk9Lq3zMpBBzBEx2hfeOtjwWRYhlwMokIU8wUozcSjU/MtnruVqxwwKx
         WUbfHjq3KIfMrQjemaMiXfP+TuoiY6in7S/fsRiTgrNfRTmfQJJyd/Oy5yr7FUArL4qv
         r3z7ma8kKXsRf3SRPaZtIufiIKooLwm2pdOqFLQj7jbcg5KnOAxbR46asbsw3WzaeldG
         /i1w8o4cmpBG6ylRYxA/KpwTdAa/NdV3Woe8fYmweK+qt4CppP7tjZ0Xv6KPIJbaRLHU
         aVOoKCpNW89DEckw4O45+1VHd1ltsBVNBPY09toKddE7mmRsUdKAIe5xLtARdaOlQXu6
         zKsw==
X-Forwarded-Encrypted: i=1; AJvYcCWjQU83rgnpnqT/9/VEHAOn9Ey6QScwrt1M5zkleS6TpVkwCfV76q6yymBmyQdItXqh99dCGB7n15A=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz0HRkam7Nc7uaHaIczHU01Ro97aVjcFOXwcjOzgYGd1V7DbUwo
	5WsCcUEjoI6+VdvyN7KNKIDKecp26hFAeOAMIUnlz5LoVmbVyXarNKsDMNo3UMSe9Nn7mwrSR1Q
	VFDQI1D96Kou/928rYre2OOn6KvckMRA1vsP56IPwbw5PabYWEJdh6DsKR9xgpasO
X-Gm-Gg: ASbGncuXy6rKvR5WovOvf5rMjFfOH5c1n+03GNb/7iOXj+AMO7Q5B0l1rDlDpY1h0Rj
	+AsRNwMWbq4+rYd3KQ/+lVcDWpuNKMleaBf6NkGzdZh6nplFudLud9EbjPgEvDjQfXyZBFkNu6K
	PbiONpGvpbUGQSfoeAmn8Cxgsqe3ktQuMvrLdD/M4Xsc4nETW/ZA0sBXLgJ4EaYXa+tKyVCTSKA
	zMC/56UU7LKtE7QsWRi6naD0Lsm8dUaZKAFVnWnzBhtmiwoXgTn9FZcX/yD0W9Wpx2K1gjp2nzB
	uSEPF+hSw3g80Nm/6uQ=
X-Received: by 2002:a17:90b:5202:b0:2ee:d186:fe48 with SMTP id 98e67ed59e1d1-2f452ec6a53mr22070976a91.28.1735030011263;
        Tue, 24 Dec 2024 00:46:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH0+3qD4z7RnyTP4+sb8Ve+3MnRYVWj8h/D611r2RH3W4G7mum8I0Hgbn+yFyukzggbMv9nwA==
X-Received: by 2002:a17:90b:5202:b0:2ee:d186:fe48 with SMTP id 98e67ed59e1d1-2f452ec6a53mr22070941a91.28.1735030010895;
        Tue, 24 Dec 2024 00:46:50 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f692fsm85471195ad.216.2024.12.24.00.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 00:46:50 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com, Krishna Kurapati <quic_kriskura@quicinc.com>
Subject: [PATCH v3 3/3] phy: qcom: qmp-usbc: Add qmp configuration for QCS615
Date: Tue, 24 Dec 2024 14:16:21 +0530
Message-Id: <20241224084621.4139021-4-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: NPhOmQV_9wcadSFfWtBAQYZek0PaUaG3
X-Proofpoint-ORIG-GUID: NPhOmQV_9wcadSFfWtBAQYZek0PaUaG3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 clxscore=1015
 lowpriorityscore=0 suspectscore=0 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412240073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_004653_636263_C9AA0BBA 
X-CRM114-Status: GOOD (  13.46  )
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

From: Krishna Kurapati <quic_kriskura@quicinc.com>

Provide PHY configuration for the USB QMP PHY for QCS615 Platform.

Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index cf12a6f12134..5e7fcb26744a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1124,6 +1124,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
+	}, {
+		.compatible = "qcom,qcs615-qmp-usb3-phy",
+		.data = &qcm2290_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

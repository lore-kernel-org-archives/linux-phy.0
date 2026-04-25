Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2C78FF885C
	for <linux-phy@archiver.kernel.org>; Sat, 25 Apr 2026 07:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VfXRVEX7Is6ldwaCUPtP09X5dqdOgLzWNvkRWmeaDR0=; b=Xut+0vbVkUx/Kq
	wNYLk6Agkb290jluGJ/mHLT4gdahekfC5W+944HcGJ368YQXPfj44lBcxaGtXbJSskEnWi7k1L8Xy
	jphQZnlMipiDwsRsGFdz6gDx7yWKTz78tioOX39BWv54iIymV0T+nCpFD1y7xBNt+XC24LhYnaqfx
	Hcv16ucZiZrYau7V9qzMt9s2jiSIvifqtHf26av/D1HrGqJFQlKwbA4r9hUQSk17gBz0qVrWO27qy
	p7i11H98VvUpMIpXbY5XxPkAgvbiGwuP15/jV96stY0UQB5rNPYC+sqhkmcGG25qR6LjH9NwzU+N/
	yjDD4QnkscnUCHpmL5Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGX07-0000000E9JI-3sjX;
	Sat, 25 Apr 2026 07:00:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGWzw-0000000E91m-41eS
	for linux-phy@lists.infradead.org;
	Sat, 25 Apr 2026 07:00:18 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63P3LC38944713
	for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 07:00:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=JhKOLrjQ8gm
	GEteABIqkTKLHL0ktRUOXijde29GYx6Y=; b=LLjkM/F2hFcasGrL0wfungt5SBC
	hZuYIIt3EG+9NXMNtBkY1ua5RY/G6XJ+1ZuKao3TDlE49pPUXOLnpcPIDdoYV83t
	sGZGVUtS5nIoanGxNl8fIkXJ8HiLwQYH9k9xK8IX9+cMNIZ9En9xAcPheEE464dS
	3aKtcdGLwUSxUcK2DNr1hyon7dMOFT6zj98szOEVK3EuguUc8WBEwB3XkPW4XljR
	bCxyJh1pJt1W3hyxL5dUhJ8yZe1a8yATx2r5/2xGiYjDa8zRXUldP2txxnOnLz53
	W9iee83a9wP85MrzVOanlLb7qfaS2q9XDUVYdampc0Sgj6CQV91fw1zvXUw==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4drnmr0by1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 07:00:14 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2bdf6fe90a9so12794240eec.1
        for <linux-phy@lists.infradead.org>; Sat, 25 Apr 2026 00:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777100414; x=1777705214; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JhKOLrjQ8gmGEteABIqkTKLHL0ktRUOXijde29GYx6Y=;
        b=CjXwR2UJ/gPmGoNwWddegSGYBPIR+9X4F0w03BfH7L9HTNgNOp0DnBpYftKMEThnXu
         pycKeloBayGba37vJdJSoT06UTn3x+3k6qaMMYi5eaP0bOwD/umbjEQcAZWZGpMvzVfz
         dkfeKO0sbbU1SURE2im4VNG3PAzyXn0MP0eapSmjG2dGL+y9n6j4BAaHNQo286aSFdJk
         5gOn1210RlEuhfG1TBCv8Bsswras+JqdHLJt8jMtv2S6ox2ue4c6Fwle7BMmBjQYYAsw
         FuTVRFTNJXdUJIW5qx9/eN+o+tgIzZ2ToPoSkwO0LkLXiVDgXzSI4y1rL+3GV+oIZtAP
         KD8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777100414; x=1777705214;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JhKOLrjQ8gmGEteABIqkTKLHL0ktRUOXijde29GYx6Y=;
        b=Iussf/58LBrhNd1YZkW0Us2RoKNRJGSSDzjfU/e7UzTMUZ6pDuzQyUMhDVn1ZEV+/v
         pyWwIDjSBwMD1c3PmPZSzghD5S1eGEP+F2QIxiIQT26Myfr4xAmFtoXYNT3kDmM67E/0
         i+NmyJVCTcFRykdVZ0Z05oBM4pg0A+3gN4s8j3ELV/oVzNICMw+2vTB/CpwkeiSJ7e4m
         56tZsztdJkusfMvF1OwL5P+pa+5uXowZmf8LE96IjB9/2By/qOnkQs58/bo2TfseV1eD
         GHxljUorlIxikSC/5Wi5ti+zeAes5DhEBvY6UwetkYXcmM0IYqxcmpumbMXI+EL2VtLQ
         wLFw==
X-Forwarded-Encrypted: i=1; AFNElJ+sgNZH3KBHwWUsN+XCbZxeoAUEh4MIZRkmoJIgFeDEtUiJ6xKrICw/g6vjlxKVecgpUFgslHLcLgM=@lists.infradead.org
X-Gm-Message-State: AOJu0YxdBOhysPn9nwiBte2tQPDUTGBawZNbMUp1flS3uDNvmvzzTLaY
	s8sU9TrfOAIefgUUF239iHxMH9Lp6WeX9w286vEuhkaCejqlv1YjNaFyzmH5aAmdXLtMVK5Oz1/
	2rsS1FTACD5ZwDPXkPc2ICVjQHEHfA6qfB/eWGwyp5tMperCJcYEwtyMRJfx+Zn4afv1/
X-Gm-Gg: AeBDietqEhi0AwEQJMpdjEitSsMjhJpQfQQjG11MIEMzGdpMpo0dQy+qZPYTGyKcNJv
	eHnTRasTgXDVFlvodsb58/opseVkHNCBif0NRDccQtyBVifg2c8IHu64tx8SH76E8/CwWUGg/Rb
	1AQXpWa64mVc+M2SvAHKZcwBso/AdY6OoVoxyKIRkHdQ6WltcYayvZY7Kd2m0jgoQTLm0Cyj3Oj
	CRDsjGThxrYvU1JYhy7VRWNif7PBNPHOc2oDukvGJbB6SeySEry3WN+75MskMJpSa2AMk/xiw5w
	pzextHaTWYDUu2ZIcA4I3ErjQ08MxERU29GS8Smv2kmjjVQ8ByD7j00jgHapdRlO1JnGJqPDfeR
	oQsYHEDv6paEoGs8QbwGeDQqILU+b+7Fy/WbEoDB8V6UCGF6ky1nMMxTi0x7bmAthF2e9rX9HLn
	rrLvHn/W5uAw==
X-Received: by 2002:a05:7022:eac8:b0:119:e56b:98a4 with SMTP id a92af1059eb24-12c73f75981mr19523880c88.11.1777100413586;
        Sat, 25 Apr 2026 00:00:13 -0700 (PDT)
X-Received: by 2002:a05:7022:eac8:b0:119:e56b:98a4 with SMTP id a92af1059eb24-12c73f75981mr19523855c88.11.1777100412984;
        Sat, 25 Apr 2026 00:00:12 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12dc2dfad8csm9430630c88.3.2026.04.25.00.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2026 00:00:12 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        ronak.raheja@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Hawi QMP PHY
Date: Fri, 24 Apr 2026 23:59:59 -0700
Message-Id: <20260425070002.348733-2-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
References: <20260425070002.348733-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=aqCCzyZV c=1 sm=1 tr=0 ts=69ec667e cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=8IMiPDtIn6OAJiDpRukA:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: -umWZYjRh9-9jU51YrAOYr1gNH1tF8WQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI1MDA2NSBTYWx0ZWRfX2ivZ/YR6a4id
 mX0cwu9OK+4/ZpXHqbzbwBa29TmCOFMI5XBTLO2W7LAckMG7OttR63axyXrhjFAJyiZf2lhzxJd
 JO4+9Vqu2QiWsws5ph8rBC7sfSCMlds62WpPaPApyGmDxQx8cjO74FTQQZ+iHvxw2e89XXiy9C0
 tmZO34T1doXW3xVfrt9bq1SNQ+dZ35InQHgeN62zSnc8y6Uyo3IWm0vdBl9x444VJ4nTjsn7Nvk
 hInWoBQu/BEJkH+ph89xyRkX4gMfy7+wmVSwFC+lfgfJuVtd6ObI7bZhqczqblj34gsWRZItYrX
 BatiO9bh6l3B5wIJ/ci1/IGVAEI1A0ZxdrcP2Hk1bZw8KEfowp+u8hJZYkiSyhcJcK+LNarGTSh
 6R1XZ2CfhHbAROw4Y/yWtXmIEFKJpmYjONM3VsE/fNfG4zKLLDtKacVQiI+0F4lDGsAyA9xZzpS
 RUfwajo4YRxmOTGmBjQ==
X-Proofpoint-ORIG-GUID: -umWZYjRh9-9jU51YrAOYr1gNH1tF8WQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-25_02,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 phishscore=0 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 bulkscore=0 clxscore=1011 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604250065
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260425_000017_118093_7110EF42 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
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

Document the Hawi compatible string for the QMP combo PHY.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3d537b7f9985..7a7059c659be 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -22,6 +22,7 @@ properties:
           - const: qcom,sm8750-qmp-usb3-dp-phy
       - enum:
           - qcom,glymur-qmp-usb3-dp-phy
+          - qcom,hawi-qmp-usb3-dp-phy
           - qcom,sar2130p-qmp-usb3-dp-phy
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc7280-qmp-usb3-dp-phy
@@ -205,6 +206,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-qmp-usb3-dp-phy
+              - qcom,hawi-qmp-usb3-dp-phy
               - qcom,sar2130p-qmp-usb3-dp-phy
               - qcom,sc8280xp-qmp-usb43dp-phy
               - qcom,sm6350-qmp-usb3-dp-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

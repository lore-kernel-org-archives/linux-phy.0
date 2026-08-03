Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A79EC55175
	for <linux-phy@archiver.kernel.org>; Mon,  3 Aug 2026 09:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B1zuOl3l38QHy6zcdDo0BhnpWSHyNN5lNlLGuO7e+2w=; b=yhdbBRAr4eDOrU
	1m0ZnWFfNgQY9u7nSNJSWezJFvdSEolHz+Dvft+d4YGWSH+HGmRDrWNiUnm6bwWDw2iFNxLUNG2H4
	9Z/nKCYiUO4vSEVAo51KSn3XH1CPNWwWeRzEhtGVrFec8X3XUYvMgIPyz8RMU9adrwDz06cOfQFsr
	IkC84OpWQU6JWorRq5FXX6+ZNwE8rhCX6/9E1MIA2EXibBgun4ONwX2sW1zT/3a6cMR+yRIPo/qpZ
	VcBKWf5nJEazP0fnHOF9ivBlNkxB9smd76nZW0PjTEfyuClKPHPKRrsaKHW6Ug6OVnOeqWKr3SbEg
	KJxbeoXXVpe+chHONUEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqolB-0000000GfSI-0x1V;
	Mon, 03 Aug 2026 09:15:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqol8-0000000GfQy-2Nnv
	for linux-phy@lists.infradead.org;
	Mon, 03 Aug 2026 09:14:59 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6736S0BR051601
	for <linux-phy@lists.infradead.org>; Mon, 3 Aug 2026 09:14:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=VYtjNoonpSK
	8fv0gbNF7iVRMip5FISJFfgPMsjKARKo=; b=dxdqV+lq8HKACT7E5ZdTjdgeYgc
	sfgYQmwJN3EC4cOuFCm3cL+olfJh7fgucLJjne4iQXeg7klBe7kYXK1I4N9uDct/
	SBT70vB3bFne/8kk/yINP+2+S38WTYng2VqF1KdUo3XwPzNw8WBpHeUoh7nvFEAu
	fRQEQ4VGOwtyXbrM0nUS9Kou+sHKMnatoy5YyJGtpqcCHc0Tm2bwKFzy8Mec+rS7
	vIsQ3/ZJkjBReXgrSWR3B06tdVdnziUcaPzq3VuoyneLOacnLf6m3lmi7gA7VNvh
	JVkB2moDIshLyXbEvScPOw4XZ65siFDThZ5GUNIiAUfaRxkED32vRHrqGMQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ftnrb8qk8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 09:14:57 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-848568a6f62so6423982b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 03 Aug 2026 02:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785748497; x=1786353297; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=VYtjNoonpSK8fv0gbNF7iVRMip5FISJFfgPMsjKARKo=;
        b=NZVw/WQglvvtxy4hdHNeGW4yRV46xHz5kaBGaeku9wzTWinoUZpGjA6tOd0Os4EgU9
         ZO1hRw4ErsaFRSWicchTkbl6OR8zumNjUOnkHPccX6k6YyzAKLHa8mirEjzRe8JSOfDQ
         t4aEvS5SI+yhJIY/u5Hbvjo0ymKb2RHSOMCx7wYMJ9pkRHjb8/ah1Hb05FjNb6PT2As3
         JCrGZPNu+0XfBpeU7ZYZj6QFJOleOBGDops3tQx2JnAHaZbLqqqwC70mtKV5wRFgdjG9
         WRincifi+nvOUV1yzfh5sCVa2Id2aXphM4Sz8lDm3AH71zN2LG+I1tb1Js4GVhlwq657
         3zZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785748497; x=1786353297;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=VYtjNoonpSK8fv0gbNF7iVRMip5FISJFfgPMsjKARKo=;
        b=ibdl1aafw0ZNBuscRWFTc7DsqdpEmPmMLbTqL8bXZjmP73HdsD7Ivkf+fAgfqsyl/L
         tR1bHxaz5N/JMnHRFsZXCbtVEnOxkOl/Z1GO9399yWRdCGPxFlfA8NqkQxaSO4D9YZ6R
         wUxOdsP1h7EZEcvAqjULpkTAq2YvO3msDfE+MC8L9Vw4RyFx+tH2+xXnCPLaBGZGKYIo
         jXdtUhh+pbB/nKLD6C8r3pWNf2G/+WRRxMxlFzZSd/YRpSfC3Kiy0mdrJ9TipqMmR8+q
         j16vpnxAM5h7pa+sUeKLgseRxe0C8YnqPC8IPU4JH739vFwiN8qVj+pf9CHwSQA0g5xF
         M/Kg==
X-Forwarded-Encrypted: i=1; AHgh+RpqjB9Id6yZ/1coqXZjcVsu7WU4SqD2btfMjGaMkwT/8kyKAqXduUi6nnHZ3nTt5ZPn6fyOdO1u7vI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzOdYXYrAI9ojaTIUZLG58CKTez+/xF+DmFu6wkYYgUuZAhNST/
	Febc2Nopvs4pOCpVjvXttz3I3uDfs5Be6zlmWwWtilLYnmxWKJUDiI2C5SvteUTJOSHX/MHL1Dl
	gTbcY8nQegWdYVRE8U9vSTepgKnYGluaQ+KklWi/SpAcsWfI4FqJOF4oAHHt/E9Yw9YK1
X-Gm-Gg: AR+sD106qPqn5PMoT+plUunhti5NPzn+4Ix+Iz0g+lE/phOk6357xAcjfRc21PgaHMv
	3OEoI0no9QfXF7TJcvn+vjpDAtKOOfhrQpm9BdXvXiqhCs5DbYAdZddzaWg1OAd5ujkHKxrBn17
	Raa6GDMB4TmtP6mg5pZo0yEgRuoEq/Np7mtcxnunGurA8sB/9jG3AJVRGRUn2r7dmeO742K6wZN
	2baonP4IKV64lZAVh4s+siIzxO3F22EI57+elQFMrAyDI3HNf6uC2221ICtVxJtk+lKShIzLObV
	bbddn8TSBMyI7NzqGnktiTBZBvtocjm6GNa3GQq2lIsZi8iOBhFjpnPU1yc2auIH04IwG0iE3H1
	X+v2t3ZsDeL4sF5F6sFhI518Zla8=
X-Received: by 2002:a05:6a00:2349:b0:848:2ab3:ddeb with SMTP id d2e1a72fcca58-84ee4777038mr8457259b3a.14.1785748496388;
        Mon, 03 Aug 2026 02:14:56 -0700 (PDT)
X-Received: by 2002:a05:6a00:2349:b0:848:2ab3:ddeb with SMTP id d2e1a72fcca58-84ee4777038mr8457249b3a.14.1785748495924;
        Mon, 03 Aug 2026 02:14:55 -0700 (PDT)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84edbe572d1sm3516376b3a.18.2026.08.03.02.14.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 02:14:55 -0700 (PDT)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Subject: [PATCH v4 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Hawi QMP PHY
Date: Mon,  3 Aug 2026 14:44:38 +0530
Message-ID: <20260803091441.3040830-2-mukesh.ojha@oss.qualcomm.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
References: <20260803091441.3040830-1-mukesh.ojha@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwODAzMDA4MSBTYWx0ZWRfX+wN37iPUGeJK
 AR7w9DYTH/u+Un2EjyEawsE3DbMmjuCnJEoLGVym/4NZt8jm1ypYBbxr5dYHyUQBf1AfrD+AyHh
 IxPVI0CKRAsFqLo/1G+v1aJeuTWrXRI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODAzMDA4MSBTYWx0ZWRfX5ywRdR2sQq3T
 tGPtuFiSdFDdUR7Y5ZlpU4IuTp5qCmz8QMtoTLp/2nUASe6ivrD1Uq3ysKbHHI2+pupk5JPkbCi
 BtOMLcPmpfv5HJ2TaGbeGN+43N0qt/PbyxeI7I67prL9wPEf6cIFpul4GqHwQK8oGMnfgpvEQ0n
 fk1OhgNyYt0vQLKJ1C1UVmJmL0etp1s+49ILnWznIr4Q5tC2RJEp8JcTgHrDo2Rte+SbYrzJTKw
 qYWNPmyLvIpaQQwhizhUp2MqeqboaB3d85R2S0lyit9I1KjnP9NOW/ha8+HLbn4y4XeL9FosErR
 tBj8kbiW60FCYxM4UqNshOzdzXpezyEPicAoKtLnVQPXSPQXA00qDErEIViNLZJyDsDvscpDeV+
 A2EoCZlkO2ADTHN7F3zg+AcxM7wOXzxHLtiGyrzJ0ln39aOn7Ee5mssdrIOgyr6POnOSKVW54yB
 Ph2HgGdmIt9Mfew6dYg==
X-Authority-Analysis: v=2.4 cv=RNSD2Yi+ c=1 sm=1 tr=0 ts=6a705c11 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=8IMiPDtIn6OAJiDpRukA:9 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: b-lf_oX2CPzB0FKp42XrytfsSFl3cK0l
X-Proofpoint-ORIG-GUID: b-lf_oX2CPzB0FKp42XrytfsSFl3cK0l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-02_06,2026-07-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 clxscore=1011 adultscore=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608030081
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_021458_732171_AB838686 
X-CRM114-Status: GOOD (  11.06  )
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

From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>

Document the Hawi compatible string for the QMP combo PHY.

Hawi uses a new QSERDES V10 register layout with a new COM AON module
and hardware-specific PHY init sequences compared to previous targets,
requiring a dedicated compatible string.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 4eff92343ce4..ea3f1699eee8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -26,6 +26,7 @@ properties:
           - const: qcom,sm8750-qmp-usb3-dp-phy
       - enum:
           - qcom,glymur-qmp-usb3-dp-phy
+          - qcom,hawi-qmp-usb3-dp-phy
           - qcom,sar2130p-qmp-usb3-dp-phy
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc7280-qmp-usb3-dp-phy
@@ -209,6 +210,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-qmp-usb3-dp-phy
+              - qcom,hawi-qmp-usb3-dp-phy
               - qcom,sar2130p-qmp-usb3-dp-phy
               - qcom,sc8280xp-qmp-usb43dp-phy
               - qcom,sm6350-qmp-usb3-dp-phy
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

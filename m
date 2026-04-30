Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D687CCFA13
	for <linux-phy@archiver.kernel.org>; Thu, 30 Apr 2026 11:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/i818pRWWYMeQLnO+wCMxRSp23aF6JhRl2NJlmnUoKM=; b=i0YkA5MSA6W8od
	eCMd3BcbWEzDlu0ichQ0ziQyQs9mQ92tkR0quQe0mPf0lB95oB4vk46Zt7HHpMiHbxHli2/UpDlEd
	TS6Vev1scf9rWh5VTab3LhDiJCPMTLNiVxmS5C97FnUrn6DEa/HwQfqI8epc7YmI6XLuZHkz5JR5/
	vfNlV/WIIcOheF7dCufbg9f25DKSCqfUNGqLDDNl8xaWOQIxFabx+P9UbuzUllLn0bfC9QAZ/so03
	1i8aIMdnF2QSr/9kOqrQ/sGOM0DX3e6NM0tyrggTumTmf2vqj7YkN2IDzST2s42a+tfOyPllN+UnM
	s6ahMQpjM57uIK74AeVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxU-00000005PLb-3wDc;
	Thu, 30 Apr 2026 11:53:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxT-00000005PKu-2f2w
	for linux-phy@bombadil.infradead.org;
	Thu, 30 Apr 2026 11:53:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=QVcuG/PRSIM/38eLRkFer673Cx8cl85lQ3sCn5QG5Uw=; b=kKongl9weMhXUKjx1gF+nCP99I
	7aQJ5mv1JIpmDphZ5aJAkOw1EmwyPa0l73RSn/oVgxjZTQCxjWvVCgu5yeZZe/TNaH+bzizgBl1T7
	xO2B4Dm5V9AF5Ib3SYYXxi44jujWqeoUtGu8ljL/ZNoalgTEztq6Dd/uDektMFoKcJGMPhxWUk8Qn
	QbBWT2N7fAvzCTijsIa5KvXiyFXYkr+PNSPIqo14YBsbkAY+M5lSnSKjO1YopZxnbL9YVi9ghTNMG
	Ru8nTCfPX8qZi+Kyzu8mSsppd8uR6Z/f/ZSGqyjEvulSfdyNS2Rrj3o4mORD8LLvobuBtvJoMo0I5
	GINkjhFQ==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wIPxQ-00000007Iiu-0al2
	for linux-phy@lists.infradead.org;
	Thu, 30 Apr 2026 11:53:30 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63U7Oli43885246
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QVcuG/PRSIM/38eLRkFer673Cx8cl85lQ3sCn5QG5Uw=; b=KEPnXFMIlPrEM5V4
	8nC7tE5zbPzmLnZsJ6z0qw9gb+IWODv2yJ7svR/GP+U0yW+l/Ke9b8S9xG1TTym0
	Mnlw6+Vb1X5JKKIldlgwq2i1XzQzOs7Y45fjVz9tRvr35/2txGkRH6NN/qyjHVLk
	6GOYioCHCwJOaQ54OitlzFaDsdG7gqQAPLXMF9A36utWhmUdnGIYgcPm7Efh0T/c
	++zSBiLbeP2G5uhrONC394/8Fd3VnR57zndQ8S/E0NEB/KaZo+AqUh8x8d3UFJx+
	oMEzxrUBfgg6EKSqtOGNiZiuxcQAFhIaGlwKvQHZ1RV7DjBD17m3OwnxI3uSj/UB
	S7AlGw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dutmajry2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 11:53:23 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2b7c904d476so6777445ad.3
        for <linux-phy@lists.infradead.org>; Thu, 30 Apr 2026 04:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777550003; x=1778154803; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QVcuG/PRSIM/38eLRkFer673Cx8cl85lQ3sCn5QG5Uw=;
        b=H4RIykIZ27RppGy5Xk5i3rWRZNXAT/JmL95m0rDYHP1hzYoMspfmBWJyJOo3LIzcpo
         cY0QE+zeTijWYcW2stqlUbq+MdI1rq/ltmtXAg3rqNsuhoaJLeH56EXqeN7yzh+CWFa2
         2ssmdzpVw3CvAz12FTFu2s6d2/TB58buIsnDfhFEhVCUnZfkjp+JrwjOFYF8OnFfN0mn
         RmByV676QsH/0IMY16LYFyoprMST0Mmi1ZP+GQ9qTE3ek1PQWHelVXU4+Dd+LM9QYHJn
         /+E1ZfM+rKRgr12RpJL2x62ujOOkU26r02yBrH+iAYqdyWzVU81UX9Ws3YH9UtpinihB
         LBZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777550003; x=1778154803;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QVcuG/PRSIM/38eLRkFer673Cx8cl85lQ3sCn5QG5Uw=;
        b=Z5fKWTye5V46sfjdnP5uCuI+qaOwVyFFDI8SwX8Kty+MM1kUvi7JxOSn9VWxM5bM9G
         pfgTPBbD5CM1O1Q4wMTCY/AUO9skqBtFxX4w+eLSjmnzq3ardkejlPn64pFM1qP55Ymb
         m79J2NmXJP5CAtBSx3IbAE4RUnDchU/GP32AfKYboV5PLIpHT+rgGFiIX+PITKBIAUfA
         TrO+FayY7bKbLJ8YcNivwMB9H+uhg1i8UsIV7fvOZSDhHPnVJI1bvDHoE4SlHJtHsP7+
         KMg+Iib/ipbH6XLPiN2PfTvONoOS8J/0v180t0aFJh6e7oGDLJ+S8Dj6J6GWb8gE7lyi
         ZxCw==
X-Forwarded-Encrypted: i=1; AFNElJ+mBtDNjz7RPbazr7+1KSLiZbG/xR+9n/T9FzfOhkWRC39nFcKvqSWSING8XnH2r/Q56/xG8XsjKek=@lists.infradead.org
X-Gm-Message-State: AOJu0YwqUWl6p4Li87Pp+1xJDPCauMu0aX7bJB+ggWt7aEtlzgyAclIY
	V8P0JLODqIOvThaZ74tC5CR8D0OOyU4Qwixmem6Af1R0yDsaMGMU2qyHEJ+2nEr+XCKjGnstvAd
	tFNMCvxw1wyIL7Hd78AM+rIJ5G89Hz6yFE0N/BIDM9Zyp1uvZSCZErZQ6bJO/Rfx21bbd
X-Gm-Gg: AeBDievmUMa8VBOU9ziJGQnCe7wBaQxPiYDZXeWQ7QjErzd5i+tjPggERJ4Zc4kUIoM
	dDVOmBogyXgfIx50GGNnKQP26rwTsL0cFFlMHgiCrV/wMwAeMraLYDPTfriPURa8mmbVq/SeeyO
	AN1oL3XKqCFOjkIm3nJE/Sk1cgV6/iY3Bw6taLxq6W5WC3rPpwcjS922bqNiKk3FkLnMNM325Ez
	uSYjb+NjECGkummKkCEo/dsxjc1bpvEDTXqlGx2CNOCBv2AZzBnAV9LafN+YrXLEdRgF0Eq+h/j
	dcNMj6rjAYwCJnB3mnQAFMITcSjEc1ALKcHMrM15dt0PbqgMobvwZUssTE8HwSxLA2zxcVXuU9a
	45Jm+LchPR/Vhzhh+wjxPFjWugx1LiFSr6/LgoeuSdObBYPo=
X-Received: by 2002:a17:902:b403:b0:2b9:5d18:994a with SMTP id d9443c01a7336-2b9a230481fmr19609615ad.7.1777550002460;
        Thu, 30 Apr 2026 04:53:22 -0700 (PDT)
X-Received: by 2002:a17:902:b403:b0:2b9:5d18:994a with SMTP id d9443c01a7336-2b9a230481fmr19609275ad.7.1777550001996;
        Thu, 30 Apr 2026 04:53:21 -0700 (PDT)
Received: from [10.213.101.118] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b988971138sm53834955ad.70.2026.04.30.04.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2026 04:53:21 -0700 (PDT)
From: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
Date: Thu, 30 Apr 2026 17:20:28 +0530
Subject: [PATCH 3/5] dt-bindings: phy: qcom,msm8998-qmp-usb3-phy: Add
 support for Shikra
MIME-Version: 1.0
Message-Id: <20260430-shikra-usb-v1-3-c9c108536fdc@oss.qualcomm.com>
References: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
In-Reply-To: <20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1777549983; l=1054;
 i=komal.bajaj@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=zn6uUGX3xthVUxa1M3JyRW75bFS3MIMC78KkLqwsXyM=;
 b=oG97Mr3hq7o3oW4gmpi6A0IpQDxDYkoztOwCzA1dH6PZZWoZb2GXuAJH350pFj451Zs8QlpUu
 9fCN0zdcVp5D9cE3QbLqS+i3qh5eJskM9ww4Qx/h7b0iuU4pwDpsqmZ
X-Developer-Key: i=komal.bajaj@oss.qualcomm.com; a=ed25519;
 pk=wKh8mgDh+ePUZ4IIvpBhQOqf16/KvuQHvSvHK20LXNU=
X-Proofpoint-ORIG-GUID: ns-9bK7nQVS6YVZbQjZi1-_hANifrDOp
X-Proofpoint-GUID: ns-9bK7nQVS6YVZbQjZi1-_hANifrDOp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDMwMDEyMCBTYWx0ZWRfXxKqyxaC1pUMM
 maByaWLsvEPDZInQiOTRPo3tOHW/hh+oPC5L7N0AoflHznM4iftaXPeneYPeHm/qBqcG5y4RIoX
 Px1sCJeoEEoRqWaoUMiyggzdzvadlV+dJHdgP6TBT4yUK2WqkR4aX4ekVtAaqfCleRybPQaZwdO
 kIwsGhsPwHE0ou8OJ0Jva87QRuOQQ4eOmRv4xdomPFv4XM0fxL6KTtycHnPiOhczpkbNSm/axip
 P5BZ5m30ELWETdhfVknevJqnH0BLG/VFhsT30FDKA1XJwOG7Q82P86XaPNtU0sD4fnTo/JeJD1/
 doGhd9eTWXn6nYqu6gSNptzbwiz2izLzOnWHn62YsjP1junGIVa4m5Qzhm6JjbeUFt2G3heCxsw
 DzVoBY4V+p2ZHDy9tzc/U49atz47vIkiM+5y9m1U41sV47I/4fiZwN1WrnK+C4juPr8P9AO1tzd
 K5B/ZKNmbhQkB1rKPpg==
X-Authority-Analysis: v=2.4 cv=Fpo1OWrq c=1 sm=1 tr=0 ts=69f342b3 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=ohkS0SODeAR81OU_PL8A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-30_04,2026-04-28_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604300120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260430_125328_760480_F9CF8575 
X-CRM114-Status: GOOD (  11.02  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Update dt-bindings to add Shikra to QMP Phy list.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
index 1636285fbe53..8402fe4a96e0 100644
--- a/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,msm8998-qmp-usb3-phy.yaml
@@ -20,6 +20,7 @@ properties:
       - qcom,qcm2290-qmp-usb3-phy
       - qcom,qcs615-qmp-usb3-phy
       - qcom,sdm660-qmp-usb3-phy
+      - qcom,shikra-qmp-usb3-phy
       - qcom,sm6115-qmp-usb3-phy
 
   reg:
@@ -116,6 +117,7 @@ allOf:
           contains:
             enum:
               - qcom,qcm2290-qmp-usb3-phy
+              - qcom,shikra-qmp-usb3-phy
               - qcom,sm6115-qmp-usb3-phy
     then:
       properties:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

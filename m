Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99802C61DD6
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 06:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WKE+k50OySTuS75i6bCz0cU4MMGiwk3KWcuKYP2xxMg=; b=OH/hl5WpeqH6m0
	e6etbAK8oDZKXvoFtod1XEWbk5a9Tn+C+ZMBFroR/QTzpizDSnBWharlDEonp0p0tiuJLP1ukksBq
	5miRt3wxsS+zKLrKcbZMc1kgt2sGGHe6wTitGJefR6hyDgEIJOJt/iD+DARUbPf1KalRTa03fM4Uv
	WoutHw1Z2QvvcUarDeY1cdD3RqiDxWAxpdB50UDz2rsHGOeEWzMHXxkU5z6jYlklFfw1ETh8o4Vg3
	KH1At4WUmT7bHSEJG9ahDBjyItty/XEipjli31m4XWmarcn5W4QgFXczpCIKca9rA0gLfQo9N9TnC
	reuvicHqbJV34zC7/HxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Hbz-0000000B2h7-2tAl;
	Tue, 01 Sep 2026 06:04:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1Hbx-0000000B2gY-3K7n
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 06:04:46 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68143Pne1646261
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 06:04:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	BVRyqShhUujaXW39CfQmaugS97D6lzGxozeWM0ROyiQ=; b=C3ILMJLx1dZKlUwB
	10wsEIgout1fM0IKcB5BysY5unbvZvB3AgpQjgQssijpwJCzlM5ZLBvIpvFQ34Id
	kW5FML/9teNwshyFao6qc+LpPDSNB2nM78khwrjHuheZU5BxFxn82nDpXjQVMaY7
	GlsmUbjLuiU9Crm0SRFqk2orn6kowC6udexaibLpU+Itm8EFZK3q+tv6/GDdf4dd
	E3XLdm+zp3FFmsHgi5bXVTNvz80zGvN/YG81CUHW1T8WNN8JexLx9mWQp9vc7cz8
	hmsiNvqP05NQNkr+jsX9XUE02kGxrUe8hdsCWtTH/VC06f6+b3uFsCtd+5ylP5b+
	b+ckzA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdqbh0cwh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:04:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2d6f73d0f89so7832115ad.0
        for <linux-phy@lists.infradead.org>; Mon, 31 Aug 2026 23:04:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788242684; x=1788847484; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BVRyqShhUujaXW39CfQmaugS97D6lzGxozeWM0ROyiQ=;
        b=hgJIdtouXYKotlSjpjyMIotDjssu238KA0MIRTIJdzXGD9jmcX0WtelTvi6JeJkmBs
         njck1JFTJbif5tWFZK1ttgXB2Ke+OWo5i2kDIv7PbLuegkmjLpn/4KYkxcBgn5Qoc+jn
         tmyWttvO4XQmMxdLcg2jrAYJI1N7FESec98wbZqxDtG3R2pVtCsUjE/hfHQiVs5zx7Px
         c/9i+gVp2DS8FcqSfAWuLDr0+ZxvhfHyWSuHYCcIMufNUtjTuo7xEuYVYYUakGjwEuEv
         wvkoW93/F2Rm+eXB7n1JJV7m25N0NGam24Ek+rNN4RxDqVHmM8RkrzzkLleAVrpAJL4v
         5W1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788242684; x=1788847484;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BVRyqShhUujaXW39CfQmaugS97D6lzGxozeWM0ROyiQ=;
        b=tJZbGDyTgwIDme0CFMBnBxH8jke+qQ8EqIAbSArhsD87K+BOdKT0mYat1sB2CB6Ka2
         OBl+J/jW/LIsNRNfBvUfLRweIzcenuS/DKc9pKYU6bkFYFLCBnI+j8wb2o5ghbaEOBSM
         V0phTuteEMI71/g8g8mHjRR2Ji02sSHyiDPWRssdLzFgjscgWMFL3O3rQL4YyWmeqTm0
         XtWl3t4DxTwHjLCpkxeukIJOiT8a10Bq2qy1Hefz8nj6U0AvIh5YjbIRh2hbCSR7E58W
         b1yHizf5VdlsQJiCb0Inha0Bj+EAaSZpEk+yFulQm3W6gfC7xzFdYGRomq/HliVvBQE5
         99Gg==
X-Forwarded-Encrypted: i=1; AKwUvBw+VctZuRS7zZXg8bnI44hhXAVptXw62zyAe0uMxIc4pEV0+lNKeN7q7cEXw6RO/J5tZAENX5aSkkM=@lists.infradead.org
X-Gm-Message-State: AFuF++nYEl4tRQf5B1uk8bUqtBf8r09J/vXmmf7F8jTqnFlufFH7yrcf
	Fax7ELdIKx0MXNDNwPTyvgmQUleBs7ljDFo/RUVgbSaR1k+Si+lMNeQOxz0hqA4IwHHgZZcd3+y
	7AvbkSQmfz/uH4L7QSGePf+CGeqCHYyVb9lGfn0vaw6FdR2gCV6QliUb/dDZHg6U5VxfP
X-Gm-Gg: AYBFou0k+QfIMex/7TL2+ju6ZHqPXC5JfIG+i/QWLNnUPxe5bw7I333UxaJPGzvolds
	J9tn5vh0Y/uXKahzwH3X1x3I8rQnOl5JL3JazzhF6DPT+Blx+WXfhPIouJoG6gtTKaoTRo1ZwjS
	39ByvxLyyyKdXUSZ2c7Q8g8Mc/8RnnTq4qbJWfs7oPow2JAl/p4kK6TlUCsVmqGWM00DWVbKrU7
	kxkIBezh0VkXzdub1cIT4dSovtDfa+xD3S7jT2bFCA3jVe19Q2h06vY8KDXtK39SAL6vvhqzFuY
	46JJPu157r963pJD9RTcSoxHX50oMO+fMUhAxa+/tVf+cp0lTxviZ7+JbLJUWg1o7g3R6QJQGqy
	oeTDV+i9WgP7IBQwT8ijqNV4cTXSycs8MKvIKY3cIe8iFUdTbIICAxQfr9KUQb1sb9LW5i39lLT
	elTZndTMEHSXgxG0RqVIvAc7Pecm/owA==
X-Received: by 2002:a17:903:3d07:b0:2d9:3be4:7e31 with SMTP id d9443c01a7336-2d93be47e51mr134662725ad.5.1788242683959;
        Mon, 31 Aug 2026 23:04:43 -0700 (PDT)
X-Received: by 2002:a17:903:3d07:b0:2d9:3be4:7e31 with SMTP id d9443c01a7336-2d93be47e51mr134661875ad.5.1788242683542;
        Mon, 31 Aug 2026 23:04:43 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286fa20e2fsm35855800eec.28.2026.08.31.23.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 23:04:43 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 01 Sep 2026 11:34:20 +0530
Subject: [PATCH v2 2/5] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 IPQ9650 compatible
MIME-Version: 1.0
Message-Id: <20260901-phy-v2-2-cc93d2f3b1bf@oss.qualcomm.com>
References: <20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com>
In-Reply-To: <20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA1MiBTYWx0ZWRfX7YphRUjK16TB
 FxAPQaaXf/LiepBzI1J48wEmT6RItpYtkamRQeSUtHETetGJx9wWCfIpJ0W2uoWqKAMaLCfajC6
 RJ2OzhuULmvldWPtVxrnGdyNoIme8NM=
X-Authority-Analysis: v=2.4 cv=R9wz39RX c=1 sm=1 tr=0 ts=6a966afc cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=h_oH2epWPEXD7eD_HgAA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: lxB_mBnF9GIii687fJcw4uj17G83H5LP
X-Proofpoint-ORIG-GUID: lxB_mBnF9GIii687fJcw4uj17G83H5LP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA1MiBTYWx0ZWRfX3khZJ0CdCDvY
 QrWgUgKqljSm4e6SFUh/333YLYikJTK0wTBaj1rcbPgdPSJX6Rwwf6jFqbGqZgZN5xGoupt+AYu
 Iv8b0AAOafxgrFMlpAe9jN5i3SC10EXSftARlZQBgR1CSI3sSnIFMKdt60jT3twMLp4lIVqUHvZ
 692KFyQwFZs2gZsTDV6LMZYWD5bmDNCrMbTaKtYZisqWgknqmq8TDpApGKUR5CTdX56YqcjlmCB
 W0791aymgt/2YY4SxVj4M7RTUkDRz584eVmviXNKw0vZDKQ9I5TAY8q9rXcHwNmqvM/Av7RUpyZ
 qMq5tDfTs0VcuociodU6k/HDUvordpBBjHbhSYgou/fZTYjVtNAvKJ/MtzFNaN/VWEqo3MdJ4ed
 siQ59FdAEKZ5xO8sjuD7MMUqnFh4R9yEoOR284aaO0r2OtVcfMSQOr/7c08N+AgxpEbg8idxYQB
 IusQBLfJIK+MWG90iAw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_01,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0 suspectscore=0
 malwarescore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609010052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_230445_952645_09242E60 
X-CRM114-Status: GOOD (  11.99  )
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

Add qcom,ipq9650-usb-hs-phy to the list of supported compatibles.
Unlike the existing SoCs, IPQ9650 does not share a generic
"qcom,usb-snps-hs-*nm-phy" fallback, since it requires its own
tuning/override sequence, so list it as a standalone entry.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 661759b25064..db00f5a99d80 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -15,6 +15,8 @@ description: |
 properties:
   compatible:
     oneOf:
+      - enum:
+          - qcom,ipq9650-usb-hs-phy
       - items:
           - enum:
               - qcom,sa8775p-usb-hs-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

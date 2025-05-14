Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45B41C3ABC9
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 00:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tf5c5PXoXAq5SoCmvnLGQIkYkqUITSXXiC3a0mbG04Y=; b=G95DBLJwFGP2e2
	UPRhGxX1AahycVXGgoqNtcmc/BG3849mM+8//msUzKKxGYrHn0m3Re5NKVPBLN0UiTnOy/LFJJF5N
	iVBoPff7xq4ay3MFx9tQqfvXF/UuK9snKdr7uMGpz9q8fqxEx8y+76jLh6EQMZWQ8ZCRMVV34xOLv
	BX+JNoZCtJZmTMsl9zO0M1LbZdBIVSDmnqZ8GSIQqhOsokVIHbCO2ug5HCiJrlyFdd34zZcTj3fKz
	CwGT0Mx+fIaw7h+XyNDJIoazhMyzrHtBoG59WsnvnTK2lvGmotzs3g/Ftnh4A/UE7DvevRuGdFUg4
	9qmosAiylY3AGwVJ6fpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF0Sx-0000000Dor6-3QN6;
	Wed, 14 May 2025 00:59:23 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF0Sv-0000000Doqb-0kxF
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 00:59:22 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54DISSsA007519
	for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 00:59:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tTxcl01PEmLXwG3vhnhNAzbg
	xBv5KPSQLGu4R6f6OxM=; b=oVPfuWvcLSYlrZU2GlSuiaiibHQb0rWQbCq40ZwD
	ZATrGTlEomBFL2X/tus1rxQnhDxO9fX2Ax9nH0mvz9AVUlLX6Iij2bLvHgX+tgIZ
	DCqdYov05bmLFC5vX4ADmAWdzZ7b75xZfDg/A9b/c2OrP4+YVe+RnHUm2zbKd6ha
	xhrIItutQq9VGmZ+gnqNPQqBnN216lbhLui4WpQW/AvbscW4egXMALgBdgnKvn3l
	PpNSOssRqAaO7tMf+N9vjOsTiwjoD2X79dwS23WQodtrf0j/vx5xpy03RdAG0Z59
	X2cVnu5XgNkaBeF2hV1Z1uYKJneJZRYnbIggXuyLCIHNuw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcnrv6d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 May 2025 00:59:18 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5750ca8b2so888675685a.0
        for <linux-phy@lists.infradead.org>; Tue, 13 May 2025 17:59:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747184358; x=1747789158;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tTxcl01PEmLXwG3vhnhNAzbgxBv5KPSQLGu4R6f6OxM=;
        b=d4jQVhWnzWlZLkH7Iy0QJ8QTe0ZwYJQ6clB6+EdsfRabzKBoOsPRBt5XCiwLPAZ+pg
         1VZ+Bexh0zP2VA8OVO4EvNMzoqfcS0R/NUZnRnAoavvVE29Axvs0s5GqwzHSvtqpyLuQ
         wVujT0bd/lphyDYz7Hs4yyVfokCsDAPwSCUq3wOVdv4GGFKBSR4hyhSGgFSG9NVu8KoH
         F8IfvW3OSSFT2GUos/LRp6ps8+LcqoN1B/SSOHE4UBhs8vvmCfpTtq5ohwtpMK43cT9M
         y6goQyfxYDcPJJK8zhykNxsZbo/f87uCt5nsP+aiNIKm54JYhr1D2qWbbw8zO6HyuNUr
         QZjQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6noan1QBZU0f0tnLO4J1frxM/0c3vx9UsyhXMIQlwmJYyiu0qW4Rl2ditBXruAfl2L6p2wDnXTHE=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZNr/D8jtz5FI2cM+xrWeCSU4I+FpbqKqv0/XqAt0UGSD1p+Jr
	cLkj+DMrWNg1aHbq5ciPRqNWkt/2t6pbMPEi5mZx3ZhZQ6wFvkv14vZzyZjPRwHRveVnqLRwwtE
	ATGlVjg91QnjQQsRjwLSEoFcHbVr5KqOyup0XLdgkmWl4QQ5Zw38QLxkMdtZcXqE3
X-Gm-Gg: ASbGncvspW3V9LWe9XTcryFbRAkKsdm8mKBSfTlXG4/JkxgM4MM5i3YYLg7dayVTso4
	3kx4EC4Ztpqp/ZeA+RaeSp9J0LtBgTthLO1X5eQnh/0FHddvYqOGv5JBxacB0f8IRrrbGuocu4T
	ofNsNfbQdKKZVOG4ohSLKnwywWa3wVD7sCaYOLxkjAFFJyEruk+8rozojImSEfOs/DCNsRnSqVU
	Qlf3HOJFqS2PZJtsMLWrYo1w0ynhNT6K7xKUz4L+2YnVxzau+Ng+g+UjKI7EPXlFKg8I6ntdx/y
	LwAjKKjushfvhS6f7MIgw8Fx2lNJ1KD0wQUX2nXzoO8UhnO8A8/1sKUW3ILbvn6WlHcyH4FQ2y8
	=
X-Received: by 2002:a05:620a:f0b:b0:7cc:c07d:e3d4 with SMTP id af79cd13be357-7cd288557b9mr224253485a.35.1747184358005;
        Tue, 13 May 2025 17:59:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYw9SE04klQRvkfoCB/RwP4rwfTjUfhHfUXv4t360h+A2UdXo2t9FLTB1i69oyPRdksmwASA==
X-Received: by 2002:a05:620a:f0b:b0:7cc:c07d:e3d4 with SMTP id af79cd13be357-7cd288557b9mr224251785a.35.1747184357622;
        Tue, 13 May 2025 17:59:17 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54fc64b6fa1sm2047195e87.128.2025.05.13.17.59.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 17:59:16 -0700 (PDT)
Date: Wed, 14 May 2025 03:59:14 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
Subject: Re: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema
 for CSIPHY IPs
Message-ID: <naoq2w2rrksdz3wjau43eaffawusymx6vwtazgszv6cwlur272@rctxn6pdahci>
References: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
X-Proofpoint-GUID: mJvjKgiZZRH0G4aUbRqeP_utl4nCxkH8
X-Proofpoint-ORIG-GUID: mJvjKgiZZRH0G4aUbRqeP_utl4nCxkH8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDAwNiBTYWx0ZWRfXxjObmQKdLUEx
 G1VWpjHv/O+555tfgCv9q6lSkxqaETyH48T/799F5bSqLEaNaYS3njKhFGCs4IYjp3pw4LbVmnT
 hpYpKn1+CNOaAjkdqkxVJMC1oSWcNi69fX71di1bkGvsObeSHTmGpMZKQeEaXmUajjnXOerHPNy
 FfS1hC3REyQE94Fcpi2Ujcn/zQ26P/8IWDiuy1snANRflZJkjw1dcMlPt2QRLOyt/sZeMBUUlqf
 hZgj3xMS95XPbB5Atck0HybVAjIz2P5c6UcjnApMLZucTd02SQ21yaAmTkYi0w3TxKd2jOKKwdG
 AYkyO31F+Ku62dXUP0ckCX3wRK+g7rxQCPtcpgrYtqBMDWQ10RD1y1jewRyWWOZxElEpiNqobHm
 OE01LAnrupjEO8oqy407Y6yEAy/JB4ZY65GZ/3CMjavvfv40MGK8TN3o77A2Tug1C0I64NfQ
X-Authority-Analysis: v=2.4 cv=Gp9C+l1C c=1 sm=1 tr=0 ts=6823eae6 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=KKAkSRfTAAAA:8 a=A3aN6VE87vRDyCXMWEIA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-13_03,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0
 bulkscore=0 adultscore=0 suspectscore=0 priorityscore=1501 mlxscore=0
 malwarescore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250513_175921_349831_EF409733 
X-CRM114-Status: GOOD (  13.91  )
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

On Tue, May 13, 2025 at 05:39:18PM +0300, Vladimir Zapolskiy wrote:
> Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
> MIPI C-/D-PHY interfaces on Qualcomm SoCs.

Are these currently a part of the main camss block? How do you plan to
handle backwards compatibility?

> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  .../devicetree/bindings/phy/qcom,csiphy.yaml  | 110 ++++++++++++++++++
>  1 file changed, 110 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,csiphy.yaml
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

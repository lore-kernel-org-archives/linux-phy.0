Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE26EC5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Isjxf/GXjhZvkvaOPdZ6APgHXTSH/tVMsPh0/HuCReM=; b=QsOm0rVmUeXdEy
	vBN0GiFcq5H92+ejKtcVlrdhww6MRRy7y8Y3ToKx4ruydEmEL03UqtS3p7av1AWodWrwM+kRKjoS1
	D6PQi47HPb8RuorYMfjt9tKMrk9ltq1YzA0+SgM8vZhhsWtXxyeBhNfn4rcw1MkvkpBlI+gdoqXJ/
	c9YCP9pHEE3hkWjtzVVFGkyMaShYgZdqr92GG2lkXYVEkU15jdfLhnftvyawryTKwVBuweWxFrdmy
	Q/vxDyULAoqBStyk3rtb4HcQJeilLkySKUKiNY5cf12U5kFyZaXM1sjnzM/qRqHg73bPFPk7CopAe
	+8e/BS8RovCoyNFUUh6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8q-0000000CIUf-2DNC;
	Mon, 10 Aug 2026 15:42:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8o-0000000CITY-1JKs
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:19 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWIJh1729062
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OxKMXPPwMwKGvDo0ioQdxZL+9a9h+gbyqaNwhVID2zg=; b=B1sP4yblbzOduPve
	iSSvRJzvgNVdCY8JDaqMydOS9IKFXwgyoG1k2rukfNtSnXkRSjpvRFWHb4YFm0sQ
	nWVvlAS8wMC3VuIawDssRKi7FcYM/HsoEQ2/ezyB3YQ4LLDgKNp7ldMeHFAmLLsf
	siNRlYIpLthmjoEjj2NF49ipzInIrG+EztFqnTvfP97cMpZiLrFKLDVecaYTIepb
	9SlTyrUuBxFyXEuYozPqtm4LjoSmQRcYdID1Yd8KsnF+0zsYyk3eRsD+lCQf7W3p
	Ru2BvhQLkv2/RnubtVmdhZce7vUhNN05tKxHxqfk2MZ6N7GO0Pz0KSmRcKUIj16c
	uXoNVQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v5a9rg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c20762d21so26978901cf.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376537; x=1786981337; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OxKMXPPwMwKGvDo0ioQdxZL+9a9h+gbyqaNwhVID2zg=;
        b=S252KfvP39oDMDvG8+fK/Yq1KDIJaVi1pdcfSZSxS8/eBpmZsFF7x4fc/S7obirIc1
         2/ca9mW20ixG87W0GajQ+WK6u0SONl0Xj2+q2UZL8x/XK1AqY2hiQrFbn/pVRnnxulqK
         fSJzftv0xyV5JhoQLOLeX3YnP+QjK42a9ttDX78f5XcCzA7dOfLxHZPbQjIyHPOtgxMW
         U+/77rEI22/hbTBAm0P0PgQf0ASL3YpTj0+4xTRgrHOwsK+hvz5M1cRIR3Wlo6HfyNXt
         QPQGMiD/cNTquebzpMMBD2eA3QtvfstgyqtS7FX1b69cEaOVIn3qCJxHJSgXGFdsOe7N
         /7nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376537; x=1786981337;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=OxKMXPPwMwKGvDo0ioQdxZL+9a9h+gbyqaNwhVID2zg=;
        b=S/kOoiREXtsGtAJpfZjo/FhPg4JkfN9n0uFIGtkSXlSCJVjqdIwfBAFT/Wm7wHQdo8
         V1sLi6oU+5gjKLmQ2zHxgFTpwOUuhIp05JruJs6n8d4oy0oNL5JTMND4Zw50MZQvQO6P
         AILnkdUtE2Wn8j5nGCd8lMjfy/ka3duYNzoLbxCuWmLwBikkkltqcJDDJ7zIXHEql++G
         XRW62UHoriyqt+Cl3/i9DvveG7rjMX0bV02QkZm0gHXQ/Nicy7FOzZe7MsLpWtgC8l+z
         u6hvtw99BYgFGBJYOg1UdiOenUF1uhJO0YjR5TDu4xS3XfDTmThyGzKE7G9OoaFE7GTN
         ihEg==
X-Forwarded-Encrypted: i=1; AHgh+RoJjmTLzca5Kqe/yP7vun3ctJ9I+9BY/s+6OIVvsYcIu0hJ4eo83ouXgk45c3RGb0hH+5BWLTocRAw=@lists.infradead.org
X-Gm-Message-State: AOJu0YwhGI1aMJCCIBpC9+XLIsqjr4LDCxbCP50cC4VkM3OQIL7M76aw
	Jb93p7nmDTQZqJzpPzkSUvRVSXk3eFYAZ89RNkNGcQRQHpaAsNS7vPnJH8+9Jwy/MYK0AARR5ds
	SEmTs+Drlj38jrwYVU+vSIAOSmU3kHGN+xR0hHRBNfKsQnyCKFyJeaZZvAkChKQAYVqCfo2KJ6Q
	Ru
X-Gm-Gg: AR+sD11kqtw9+UPrL+dC9kwMe/MAAlg3IBcOkO0PRm3s/3zq0CsMgpsik8M9UMGGTVX
	dpoXKCuj8oAjW1tb1WM8/A16rQlk7x2OJ9i5gnmAhBvBjKReAarVUeuj3PHI3noSvvkMfP7GRoy
	hKtFKwoPJ2ABXC+xnTozB6fdpAgpKgm3L9z0wtVDx8ANxYbECWvMfQqi8Go4AUjoYx8pKVcuuJx
	6bUMjLK31LirZtG5fHQZBCxRykT6XforEOUs14M7yN00bvmxN8uMyeb1xq/8YjhjoLL5eO10OH/
	E3SMJrkpieyxJNHy9OkapSMqT3DYRtRSu+0XSeFtc90D7wOA1odSf0Pi4frZktZos1/j3F0z+mE
	E5kM5c1S9OmH2mB0xlc2jBl8IY+6mzAnkaE4x21Ww5kD6IlY15ChV9XUpJI7yzXDKwe6S5kMO7N
	YRZ3fZJsvhHDCTMg==
X-Received: by 2002:a05:622a:1454:b0:527:f0a:ccbc with SMTP id d75a77b69052e-52d18e6ee99mr257126241cf.18.1786376536737;
        Mon, 10 Aug 2026 08:42:16 -0700 (PDT)
X-Received: by 2002:a05:622a:1454:b0:527:f0a:ccbc with SMTP id d75a77b69052e-52d18e6ee99mr257125181cf.18.1786376536013;
        Mon, 10 Aug 2026 08:42:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:13 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 18:42:06 +0300
Subject: [PATCH 02/10] dt-bindings: usb: ci-hdrc-usb2: allow the HSIC PHY
 as the ULPI child
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb-hsic-v1-2-e5f93ea76ffa@oss.qualcomm.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1337;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=NB1VGGbjbuOxIk5Mw7HUiu/hvGDkUOwfKdlFHlZ7Ols=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqefFQBGUr6d17A5+31t5SJIcxfjs+sTCgcn3b4
 0l8511XhQuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCannxUAAKCRCLPIo+Aiko
 1W9vB/9CocINfSQYnk27Gf5su/THJJGCq7QRj9tRZuzDC31t0zy/eyaGi/RXGdB1S1h+vwmBjk3
 r+PKXXgB3nfaqiAaNZHsFQmoqNkVRZajicGwipkCsEDiQzJ4j/99Ui5JCrIPzJQsDeVc4wqf28h
 a+NcKyVR13lBq9YdKMmLU8MGZYO/3bE7MB2fuIn6MmsZ9AYnIfgH7mZfPTq8yYe4nI+lAR9YK7B
 uaTO9oAIvJS0rwBKkCa76gqYckqSYFjYSDWBVj31cwTqWh4Yx8Aa3XmV5VoWcv8i2ct7ZZmN9Lj
 giA41d8vYvliv7yjlbs/AvZcyf6R1hgbtxcxp5GIit1fUWGk
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX7/hwARiCkydP
 epi+VmYtk13/dVs8KnS8N62ShNEuqm9xOhkimOSEIA0TR0FptC3tqGsadXYHR3FThl7OlIqeX3q
 CPZeCQuzLOrGlbFDXRzPG1ncKTi6tnE=
X-Authority-Analysis: v=2.4 cv=J6qaKgnS c=1 sm=1 tr=0 ts=6a79f159 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=PYw3GZkS7KwsNStVb70A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: vwdP1k4KJ_0oai41JIs8iH7AxQDdNvM7
X-Proofpoint-ORIG-GUID: vwdP1k4KJ_0oai41JIs8iH7AxQDdNvM7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfXxtmMuLrEELIq
 0GD7EKuK7mjyEbC5Ronn+ieS+FoE5hbWbTTM1hGCa7axd5p1NcWb7OYFrAb9tx6gDp8FgYT1hcJ
 H1YsYzzK1ahGT/0W37bnTuWoLwX/A6IwiTCduUmHBW45ZpyRfcyjEmRJ3r1zHUK34zTjKcpJHAc
 BB6l0hHi7v1BMy0WBtEqg4d/F4TDkjoFRH5TJqnrhCJ2VN3G41jAjTRhkTa0PHXghDsjeKo22RP
 +TlqrX1dCGvKt4PEko6lx1e/MTFlxmmrmHObyTR521jRNpyGO5pw0DZok7mt8pIaaYEVdEC5EZU
 rXax3sJSgrmkIJdExxD3C7aZbnJyYp2JoXXB3GAOZk0UhN0N9yP9XSghVFn7hw0vi+HW3UPP1ym
 EtGdw26qHJBJfmR4VzgcGjG1zfysnOv/b/bQzjadX7x8koftF7LtQ44ologVGu6VPH091NnnDMt
 q3bFLysguTvuWFy5dfA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_084218_381685_4192832A 
X-CRM114-Status: GOOD (  12.13  )
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

The Qualcomm HSIC USB PHY (qcom,usb-hsic-phy.yaml) is a ULPI device: its
driver is a ulpi_driver, so the PHY node must be a child of the chipidea
controller's ulpi node. The ci-hdrc-usb2 schema however hard-codes the
ULPI phy child to the qcom,usb-hs-phy.yaml schema, so any HSIC
controller instance fails validation with bogus clock/reset/compatible
errors.

Allow the ULPI phy child node to match either the HS PHY or the HSIC
PHY schema.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
index 620b564914d4..97ebf9e031dd 100644
--- a/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/ci-hdrc-usb2.yaml
@@ -83,7 +83,9 @@ properties:
       "^phy(-[0-9])?$":
         description: The phy child node for Qcom chips.
         type: object
-        $ref: /schemas/phy/qcom,usb-hs-phy.yaml
+        oneOf:
+          - $ref: /schemas/phy/qcom,usb-hs-phy.yaml
+          - $ref: /schemas/phy/qcom,usb-hsic-phy.yaml
 
 required:
   - compatible

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

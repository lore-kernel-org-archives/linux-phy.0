Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1CE8606A8BA
	for <linux-phy@archiver.kernel.org>; Sat, 14 Nov 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iUyKV4CK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=UMfat2ax;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=c2FWSjpz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=M0tdaFdtfyeV+iBHvPmoADmSIEFQjfKleeyOzNqnxNs=; b=iUyKV4CKzG64kXSjiTRARZgTni
	JgZmymql4d7I2jfq+gnZ8LCjIjowANF+EsIXi9Dz/vaI7txbPDT4Lbtk8pwBk177IpNjQHoWmFwK4
	//WgHcbSzEIKJQ2FOGteqA6R9vl3CI7IIzv+1m4MMoALeYd3HFHsIuC51E/7Jt0TUXPclnBxHv8fY
	ozvAsv3EvAesXP6j4AThWWRFBViioHy4ClWCDMrq9YCmfAHOV4L426vXtiDzTiKYvaTWKUjiMPLo0
	e1K4JzTj+HwulxlcZ9nXXmmOkRFABlgz9l6+NsLIRO5rytKnoyGDu+4aiVY5/B5Z6TfnodBYVHI8B
	BXRYYugQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxp-0000000Ftnj-354Y;
	Sat, 14 Nov 2026 11:30:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSBxm-0000000Ftmv-2Ypz
	for linux-phy@lists.infradead.org;
	Sat, 14 Nov 2026 11:30:32 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AE9wg0B3276714
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gTSf169frfMjFZsMxW4csMunjCZN1T8v74xtvKaojKc=; b=UMfat2ax+68EdAj/
	tN3OQH3rgy2YMQ7HZ3iUEIoolyUOFJyB9OYDkFHOJnY//GU0Sm5DsAPtFFtfFTmK
	yJABxKn4Xg07JqPfLUxDivHhVzddOr59fr+zdO0x11qOER0GaMcpI1YjU1W25wRi
	v84PQwwfWXgZyCr7yVP3GPZURGj/2H2kHmHATgOqN7iPXoQGnLdbE3zRitsZ1Uek
	2ar2e8nRTbxfbO9nYdXuZ7lSDraPgL4UK/7JbVWf0JJ3m9bOjc2gon+LtUNY8IqC
	XgZmR41ifzSDtkKWKcuoHsjf0yQvsHYyexFpQCe1JDVIZke8XaVWZ8BS0oS3Lq5S
	8SFPnw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhjqgrd4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 11:30:29 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-91f2b449480so30631116d6.3
        for <linux-phy@lists.infradead.org>; Sat, 14 Nov 2026 03:30:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794655829; x=1795260629; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gTSf169frfMjFZsMxW4csMunjCZN1T8v74xtvKaojKc=;
        b=c2FWSjpzR24EqVZpwAjDRlJim43sxhpqTsQmT36Zt+XHY2T2ETp5i8cIXC7mRiiQKr
         LFJys0sPqcsJfspeLeb78I/jyUQqEPvNJQcTWKPp8TKvJMRuMvkSRbHHM4w+kA6OFSMo
         2BEgdGpAFglAhT5I6C9G2v0Zz+xrCeOxu4aHqf8ZuKG9TltkIm7Z/PTFu5R48TsnJ9ik
         i31HUOOG18t8U1B5oiv3EZRv+cZmV2nQMyawWaa2zIV3zFpNZJdCKRyDdhRQInjJveDA
         7q36D0J4q8W43biReQNkT4TywS4MPgwSn5X0vxoIvcW0Mya3vEwEY0h6rzI+FIrLz3D3
         sy4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794655829; x=1795260629;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gTSf169frfMjFZsMxW4csMunjCZN1T8v74xtvKaojKc=;
        b=dYWPexd3pyW3jrQNocMPgGmvcGOtsHcMaRI1RrrUaB+liqCoEUbUbamNXyBt7IQIaU
         mY51dVwLw27lfR3Yyz35C+mMZnq5F02gv2WLYQ8R04W+RCpZ8W08ij+Rle1No7C/FN/Q
         4QppHun3IeTOFDVzXAYBVImHUJ1DqBwv8LfRYLdz48KU7Ayuz4IiB0KGr3GaP/u635dU
         VEvjbmNWSajFy0L+0yS8sklNBHMRatAII0GgezKtIwP+W3TV5B5ZeJjE+HLlnRAy7DPN
         MTsmw6p6XjR17sARx4/H4WHZpJtEg+WOleNSdQFKrhCyuCoWRvxW0O+jX8k0+8B8GIPb
         3NBQ==
X-Gm-Message-State: APuU4Z8vqwpkPxlH+U9ri3gejl5BqzQc884GOOkcC9wkJ9aZIgle4FFf
	2EFE21Y4Inly2ckMN3XSLhfUVF/TvPFYjfqBqAbP1tHnUo0drQ74Jy+Eda9VtMR2SC4/ADI+FR/
	F5b1WUAe+ByWBtdBL5N2cZEE7juFJeRWv7KAiZEbuqayeNCd7q/PI0gNTIeav2syQiBpG
X-Gm-Gg: AYBFou3OrGq//f5D73zBLaJNxIzjbgfaWUNXdKUgxQaKk1enyzP+c9ne584Lzr6PDnB
	5M/8mto8FlRchorGDo9uTl5Z9XE+JNf8kCPDEtT997H+4TtKUfmqPQHPRmZ5y2DnkE426gFS8Zs
	9snhlgOr2AykjF06Typ2Uj8Aq1Lpb2yvzLJtfgoAgykkQgZ0TrtvSSqrYV0XR7TYWHnBxr4sw+a
	mtLsut9uqJOqJNSwwJa7C1299Ey+Vr7xyATsGFVWTPiZgC99uYwuX8Hjk5SiF15YdsYNVsJOwX6
	xAMEpknOJvggqVjN9eGWk6oAxL9eOa+eBLu3t8ShDOBkbgYQFbKRy6uYH1xFNrUVONMqfisV5cb
	fcI5GbSmOeLNLVz85HkyM5UrikbryMDi/iYn0YQlj5ynM8xvmLgfNh7yQrvYNXFn7kaZQLR6seD
	TM3BITYxh7r+9/o0+lQ5sJexmecA==
X-Received: by 2002:a05:6214:4a88:b0:91e:7d3b:4dc7 with SMTP id 6a1803df08f44-91f24294007mr84960686d6.58.1794655828897;
        Sat, 14 Nov 2026 03:30:28 -0800 (PST)
X-Received: by 2002:a05:6214:4a88:b0:91e:7d3b:4dc7 with SMTP id 6a1803df08f44-91f24294007mr84960156d6.58.1794655828431;
        Sat, 14 Nov 2026 03:30:28 -0800 (PST)
Received: from WENMLIU-LAB01.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-91f23d7ba48sm41389746d6.28.2026.11.14.03.30.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Nov 2026 03:30:27 -0800 (PST)
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
Date: Sat, 14 Nov 2026 19:29:22 +0800
Subject: [PATCH v7 05/23] dt-bindings: i2c: qcom-cci: Document Eliza
 compatible
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-add-support-for-camss-on-sm8750-v7-5-8ff2a11835f6@oss.qualcomm.com>
References: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
In-Reply-To: <20261114-add-support-for-camss-on-sm8750-v7-0-8ff2a11835f6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Frank Li <Frank.Li@nxp.com>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794655774; l=1069;
 i=wenmeng.liu@oss.qualcomm.com; s=20250925; h=from:subject:message-id;
 bh=61yDOYkYSQzcaMNW502STOCKhR8JM0wrwP3tqxLNiqY=;
 b=ZmGzJUN2j2tTw0MqwLjAcolX1NvdlwsYsUMfPFvO3fQNEEChYTiWO3sjeHeQOIt4y2OG5zUEe
 CeqCoKP/0ZpDr+LXQ7U4OzMgWHKzuzFtWvMJMaE+uaKoldTk+I1xiVq
X-Developer-Key: i=wenmeng.liu@oss.qualcomm.com; a=ed25519;
 pk=fQJjf9C3jGDjE1zj2kO3NQLTbQEaZObVcXAzx5WLPX0=
X-Authority-Analysis: v=2.4 cv=KelHIgYD c=1 sm=1 tr=0 ts=6af84655 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=phzA4CzYhpZqrDFsW3YA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfXzCMSlepP6uyO
 ZIBKyXAuvM9Hkh0vU53DU8Jcn1uh6kGmSN3noVzR5iNpH9zFyvFTFnhczwy4yvvC5Q4nWoZgzf6
 LyAoKPWjyY+t6JCh4J/2Av9qiqQyoRc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE0MDA0NSBTYWx0ZWRfX8LQawR77A2Iq
 21Va3J+r9Qvq5gT5b4nwgCvd0uBA4k4eCE9XvRta5agLr5sQVWsOMbq5rlqTAO7VlWCacDaIZmf
 5Lox8CU3FHk2WeV+1UWF/rJxg0l/8YZYsXPwNbdQ5FNbgUtyb4mhV2xwt7U7eYiMSmOXhMed38h
 M6NhsMn7iTBZ+MZdSLw9La5qZFPdpDbiiySwJKwsul3VSbtv03XdyEcsHq+9ofGpH8nlxxMMORj
 RsmVrJQ74RaGIL3Hu3pyef3WY0YE+oKuK+FiTYjuf9qXYcr5fHLytZ8g9QH0JTpzCRO/6C1Clwq
 I98AoD337TSj1pGRbf/6TcUrWDN68gU75fwKRSnhK5ooLk8SQSOEQoNUkMHwXTOVLdAI2/1fZ58
 cXGX39v8YVpfLPvdu0zKsQXR7YFkcb7T1+ZN4Gj0PJsk63cJskPOiIDo9sNz7dRZ5GAYn5UweY9
 jqvFDNIZvhEhdc0RYyg==
X-Proofpoint-GUID: LM1upfrSRgh7Ie_2r9DtqqtjJSqMjLTR
X-Proofpoint-ORIG-GUID: LM1upfrSRgh7Ie_2r9DtqqtjJSqMjLTR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-14_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 phishscore=0
 clxscore=1015 spamscore=0 adultscore=0 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611140045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_033030_779073_05B87CAD 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add Eliza compatible consistent with CAMSS CCI interfaces, falling back
to "qcom,msm8996-cci".

Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 1e8def25ec0ec1ef6b34859709d10a2a36fe36f5..f16298d94177f906790c18831bfbcc5557a5accf 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -26,6 +26,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,eliza-cci
               - qcom,glymur-cci
               - qcom,kaanapali-cci
               - qcom,milos-cci
@@ -136,6 +137,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,eliza-cci
               - qcom,glymur-cci
               - qcom,kaanapali-cci
               - qcom,qcm2290-cci

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

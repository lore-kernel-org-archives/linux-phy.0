Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E17C606A33E
	for <linux-phy@archiver.kernel.org>; Mon,  2 Nov 2026 10:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mZ494mUi;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=mvcKXKLE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=kmgT7p40
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Fu7r8OR3RbUQgH6k53grMsjYRTdCUn4W0JXpBfNCrac=; b=mZ494mUizkFOjURCY+qewMLs9s
	O6669v8XF7skGlB2axM8hv5PsQhvF06hkZhHtUahWmcsZNKuK329RKSl8M5V/woeag2X/zm0FbwT+
	/l8VRFZ5YKT6n9+N6ygXtFjAkQqrlo6RPKFnYwmN/2Kfwgz7FvEE61XxsmKQbU/1JotGfnNsRw0Ro
	EYEodjnCe+oNV4u0LgDCJ9tPbVhNv11A1KK+D8pL54bJYoC1eU5u2ydl2NS0Kv091m1Bo/x5S+Nq7
	8RiMAxcXUqGDGDwnrXoawYxKw2oKLuTWg8tBrQ5V5sYWWHu4MsKenZ73ADCdrqjZ0Z/09gPsLjgj9
	JPgCHhsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUc-0000000GCLk-1JlP;
	Mon, 02 Nov 2026 10:42:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNpUZ-0000000GCKQ-3atg
	for linux-phy@lists.infradead.org;
	Mon, 02 Nov 2026 10:42:21 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A29ACsn4039397
	for <linux-phy@lists.infradead.org>; Mon, 2 Nov 2026 10:42:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	czX+scCvulDqANj01Qk8R+CY26BGL/k2NFKRUq1N9R8=; b=mvcKXKLEkI6U6XF8
	/MSN+QFKX4Nb3WCXOdK+nO6AwDX71ZlbEdYk0Zy38uj8lE+Q+ugEKIfECbRYZaaL
	JyeaEwQrTAsit2hNqFvx+uqXXuWCwdM+IQNofX5cjr5cS+bUsrOPAVL/n/t6S+AF
	x+FCEqL/nyXNteBDwrVByvhm09Db/BykPRj+RLbV4QT+jVWquFIp6Cc/DMiQL49Q
	VytibPYRBJPxpzR6uQikGPh0wp/ABYRmr4CWbkzDd4k4Eu/BK+DlyGcuQnU0J1cT
	V97J1bRGmcbDigaubZ6BNss3cpo8VFIwh9ZG6KrRA7AGqEnBWViPStzl33SKm45y
	qhLiKg==
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com [209.85.210.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hpph18q9v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 10:42:18 +0000 (GMT)
Received: by mail-ot1-f72.google.com with SMTP id 46e09a7af769-84fe2593525so4431821a34.3
        for <linux-phy@lists.infradead.org>; Mon, 02 Nov 2026 02:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793616138; x=1794220938; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=czX+scCvulDqANj01Qk8R+CY26BGL/k2NFKRUq1N9R8=;
        b=kmgT7p40BnfzyTREeyz3W+MThUjZGillVwYDTcDg/rsFRA2q4K686wqXW3dVhz0JZj
         iuIww2FOItsH6Vq40skSna7XiTcgvSJeun5ZUWP6Of3HY7O45bi9WWGNDpH6kgX9eQcw
         FevNLw+Av5Z4Ep1QoKk3bqo6gidm92QTA/VwjtQmgq7+ctdceHZql9Um5hnEQJo/JwA5
         JMFRkJQ4St7DksFP6xD3TLwmzID0BKxEsqtAux8K02FDMb36iyWpXKHi/OYPYiudNXi+
         f1hgzquDNce3v1o8nMJ+C6rvMHOXVaZTY1pJHGeM9xZJ9Fd/Q5ulewlNNZbhMMf4XMKE
         Xs3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793616138; x=1794220938;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=czX+scCvulDqANj01Qk8R+CY26BGL/k2NFKRUq1N9R8=;
        b=kIZY/26TJS1X11vc0MjtV/o2g5QHTDhiW4fZRPe41eWLAmbN3DKK9nXYLTeMB65H+J
         O6Z7ZewNGj36i9pBP9ScgRuyY3qqKZxJ/Vee5k7QueNbNxEN57EOvYq8x1HvYeFI0CrL
         nbpf13ZAXFVswah5lMZ6mYxWrypR25Dqh/2HQIL467mrk1XKSwsVHwLaeyFu5ujjTqSY
         xlBWrDDFTNybNmue/gWvZE6F21JLDURbp97whyDQ/Y5zWVdHuZuKBjbgu5w5QjmKO7mh
         3CG1aUIHLkJz+IU6/3ge4t5YgMUP7KxYd5Qgth2fxLfbWKz/CiXGgtTTWGvF0YjaGQhD
         whpg==
X-Gm-Message-State: AFq9FYL51RjTlb0AZh5p99EVimuCoQCugHryT5mA0fsrHtDCgmco7zzb
	+EBTGL9OL6LlY7qkWheGJzn07mTchPRr15UjmzHKy5Y9BVr8OFL57XTVa1HDCLE/x4BCCSKurEX
	0V5Erd4GxvRiC+D4tjx16ZOGCiZLUA72cjrQTcn6vxZPx9Ujy4vwxas73OywEtc0/5TzQ
X-Gm-Gg: AYBFou3IpgnkWeyi7vLdzsxSQTpPOX7SFoVzCk2VBQdomiUAaRJBZZ04wA9hHwqZaxb
	W0zX37m24QoqZBuJ0OOM1eIdlroKRWA+FnSHtII7yUagOTblIOdtAxv5SHf1JnM0GLiScQu5CWT
	ZT7qH5PnjLKca5LsNMkm0ZTexfuQV0lf8zTTk5Q5vlwIw4IkQ0DWBLqKxh6MAaVeBiZGJKFgpVB
	QjhmTRppCHFn7f61YblSvB+wSk6aP1A9c5c8rXzxwzwViT7+ZV/TtynxRPSLDKLd556qXRd0fa/
	DCqrM3+51/zaJv4f2dREs5ZqFuQmgJRDaDi95YO3pQH2dkMk/Kce/iesuNCWs8Pqk6BZ7bU723i
	ZxY8le6ljwhxrvpxlIVCt1v/J+DFxShuyxlTqrNDk+yfwb+aYxP2S9JqRcrZlAWqWk4W6/BOUfx
	hW69EoPFKeGxBUwNzVTpoLwVwnxq0yQePWYlBW2LO9jc+Lj5d8J7jNci/Er9w=
X-Received: by 2002:a05:6808:1995:b0:4dd:18c7:5448 with SMTP id 5614622812f47-5640de57273mr6522660b6e.56.1793616138173;
        Mon, 02 Nov 2026 02:42:18 -0800 (PST)
X-Received: by 2002:a05:6808:1995:b0:4dd:18c7:5448 with SMTP id 5614622812f47-5640de57273mr6522644b6e.56.1793616137662;
        Mon, 02 Nov 2026 02:42:17 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-5640fe0fc77sm7447171b6e.12.2026.11.02.02.42.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Nov 2026 02:42:17 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 02 Nov 2026 02:42:09 -0800
Subject: [PATCH v24 01/15] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add
 Kaanapali CSI2 PHY
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261102-kaanapali-camss-v24-1-d6b8f3f6f66f@oss.qualcomm.com>
References: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
In-Reply-To: <20261102-kaanapali-camss-v24-0-d6b8f3f6f66f@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-GUID: CnEbSa3TUwkh_kU6fcBqZvP0_XtpEio7
X-Authority-Analysis: v=2.4 cv=IruL47/g c=1 sm=1 tr=0 ts=6ae8690a cx=c_pps
 a=+3WqYijBVYhDct2f5Fivkw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=quhYwmWePwexk_oO3l8A:9 a=QEXdDO2ut3YA:10
 a=eYe2g0i6gJ5uXG_o6N4q:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: CnEbSa3TUwkh_kU6fcBqZvP0_XtpEio7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXzPdzlhioXw+D
 QdMwalatIIBEZoBuRfpAg1drp2LGult+csueKqkbOEG8d7d/x3E37t1MD4F4VWJfNs0gh1T2CgS
 gaLbR2Zg7T538T++iOx8LrAomqffCig3W5PndSU4X18tICPBnJ9b1YKDfBlaMb7xJBICuRKxcBe
 K7WvNJtXbR0xSw9UooMRJv7TRzq6HQBhQ7lq9iSjxcHzP0OnyG/9zqH67Hwg2Ghl95QhpliUr2d
 CVDmW9DfRKOYmgX86M06xsaW2zoU2SlUd910JWA7DeaiPiY5OF45D2sPWQ+IGLgMkAcNkyXjtbJ
 DMC0wZG64+pmV9MXT29wHdj1dfi7KA99mu7bfyOzN7dJdgvC6TUAhGZU/DME2QcrVoKJ1GOFbx/
 g9/ib2H4S46azTEuJboAQ34t8My+mXlN5u/8owSaPYzZ9fhfUU/XJCEjs9pDYTGZKBzFx2r+AAP
 /eISA1pdKRN4rFg8OHA==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAyMDA0MiBTYWx0ZWRfXyDBVC9ILedyi
 HH27SDEfe1FmEAe2VGdO4z8cIJOF2ry5mPGIzpxcUX8ZltIqiKrCrWrcUMpe1Tr2T2Mo6n5SgL9
 djv8Zx1torXnscDNu01crn47yR460FM=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-02_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 phishscore=0 lowpriorityscore=0 suspectscore=0
 spamscore=0 impostorscore=0 clxscore=1015 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611020042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_024220_021352_D7CE0EA6 
X-CRM114-Status: GOOD (  11.93  )
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

Add "qcom,kaanapali-csi2-phy" as a standalone compatible. Its common
status register offset differs from x1e80100, so it cannot fall back
to that compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 1f1e2a4993b2..6e9eb8e265df 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -17,7 +17,9 @@ description:
 properties:
   compatible:
     oneOf:
-      - const: qcom,x1e80100-csi2-phy
+      - enum:
+          - qcom,kaanapali-csi2-phy
+          - qcom,x1e80100-csi2-phy
       - items:
           - const: qcom,glymur-csi2-phy
           - const: qcom,x1e80100-csi2-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

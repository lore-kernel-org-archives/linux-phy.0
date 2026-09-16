Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07036C982D0
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 18:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fUHQ4ZjnHI7YYocqfM5GrDjzHKV0bgAomLoswi6hmxk=; b=KR8/PsbhIl7ZLl
	V9XbREwevTIhfACxv8HtQ7WCRt0djQ4gU/a0t9dlQ01ek2jS3cMXHbAWtgkafqGt2U7NTIeEhPzFM
	wJtDFYmV9xlFqHdllTymIPznlGCUFRhTvcZe3tl2qQt00Xb4m+K3Wza8aYwCZtoMvpI0UDgxdSz0F
	Jq4+Su0rnzai+lTXgl4KF27aMmAPM4gCbpZH4Ifeb74aekM82BpcbgtmBG0SwrbYjHu0ooz/6eCqt
	BTb4pwK0lNnZk3UI4CM+5BooMP9UaU8/5dtdtGdRBkn+jAhtKgXjTCl1uyuZdF9tMkqejAtwI0QI9
	BRU/dqkYeWwW7GGvdLAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uPe-00000009xVR-2yo8;
	Wed, 16 Sep 2026 18:31:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uPc-00000009xUF-3nNH
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 18:31:18 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GH3eGc3897290
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 18:31:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5jIxQ5Y/e4moaQ2XFAjQT+FXkhb//3C4hiLXRFU2mKM=; b=eRF0H3hJ/BmErKd+
	aP8uQWcUBUFFdkGGyXjFU88qd+VYUtHUl/zR/Qi21+Tr/5/hibz9tW71UkLVpsta
	xMHPTxMiEyCtJxV7DbzC3TtVWOseitZS24MqG00azDvslhFKUa90hJZnsOZ7QXEP
	kurnJnfQ3VBfOagR0SYmaSXcNA3Cwp2TnRWb6gxW2nsZKdXjGLzMGYIu3ULjKTco
	U0zEF0UduOLaLzYTz+2cpPhqeptoiJi/qJemCskJviWhrR/QmVHO2jxquvSUFXcJ
	qpMKRUGvuJ6JkepdMLdwXEd7k1dfpEGS7tOsfbJqbCMc1UA2NKyRW6cyEiqRIYcf
	Ic4nKg==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqy6arch9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 18:31:15 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5c964739454so5880660e0c.0
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 11:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789583475; x=1790188275; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5jIxQ5Y/e4moaQ2XFAjQT+FXkhb//3C4hiLXRFU2mKM=;
        b=XKazWliE92Fc0MRwk2xtiV+Ly0JLkpKX3Ch47oR/+K3HvyrUntlHsdOjzyt5Q1l12k
         8vCvVgXFlSsN7EycKOwZRbtrdCBz5GfEK14LxFLtYu5xtuRcxIARhKwwRsO7OfGKplhs
         mOi8dEuNxQ59dOEPbSdH1Em3VcM2dk2w7Imze4yeMk1BX6GeifwoE7kk4FV4dhyqfTQ7
         znWIU3lO6MXt6LDQcegL7oVbL631KfWIfMV3MDOvQEtHuCxd1XYieGP/M/vnEoIoc7mt
         YHdTWij8lJ7Quz/bHgSCFwYkRrSWJNd3vIVe/h8KxbinzbCiUwUA0k2vm0kjuOmPHx49
         81wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789583475; x=1790188275;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5jIxQ5Y/e4moaQ2XFAjQT+FXkhb//3C4hiLXRFU2mKM=;
        b=ZyL0R6mgbEYwOUUckCSkIJ0lUADtxaAORHuAk60/ULWR88LVIQfUrFPECKFXtZyeNm
         bKUe9gSyPosnern5EyzXVYfKeTIoNa848e/5wG5nYwGNnwaAKFd6C0YOQ0MnJS3XywWv
         7GcM+7t74pSoMewtGguyhZR2wUxPvpBYSE+qRP+4tntLKmiHlS+ve4vjEwSlGXRrIBiH
         Id4l5BuJTtcKulemnRyw9YhqzgdzvmSKw67LIkrmOmCBV8kdIxpdbCL7unWbG4q9ddNL
         P4lEqjEYZML585q+7jNAJbf94Jq5vj7OZR5C5ctEh6idLqTe0c3cNq0jRJTkek9iF1kY
         oHoA==
X-Forwarded-Encrypted: i=1; AKwUvByvc2km4xGLZ6YvixcVQQ8oDH6Qowipy/R9yEKs4Zu+AKoLKblUJ5Fp4b+PInroVdrkaENYB64cVig=@lists.infradead.org
X-Gm-Message-State: AFuF++mdW0gYTNW0AgBSbuLfgr/BBXeXkmdUxVwnAZFr/vWbyYblb2Oc
	pUynDyBXkbCXDVRfCCm7pE39/Y4t44XvP1MkILLhwrVy+MAf6g8poOe9w8PQWZklKgY5fKxPlYR
	5mDHJlemKQZn7EyoRH+k0wpNSUDkjQHGEnjG3zJVqxt8y5PO/TTM95bau42dZRafq7BWZ
X-Gm-Gg: AYBFou07jGZ1AbtuF7v44fUgIX3BJKTjmSS/INEfWouy5w0EX3pM7+e4LePkyB+HJd9
	gbO90ps1QNKZU54YHwfVK7ENM44xgWEseRhGJFBEZKWF58cULL1sFY4WrOzEWlYEUYEQlMsB+FM
	ulzM1cRn84z3mGtJTDEWzeD5jOOusc4xrYC6AXWJGpJpfrqbGxTJZs3nT7qmlYGixuo0qtE+vcr
	VmpwSbVsTZjTK7u+POAyiykQPWMcxKz7zxfHOMKHR9RC3WZOKeuz0C3SbXaMou+7Tl78a61LGOu
	/bjvNG1VRkQbTv3JKtXrIpAFjw8y39G7VUM/ZYxsx2AddOMqCtM4tWKO4SMtKlnJ3xCnfXIGku9
	mxqQhJXNGQFOo0UEoTSWKYXx2bVE=
X-Received: by 2002:a05:6122:3a07:b0:5c9:a60c:2731 with SMTP id 71dfb90a1353d-5c9a62dd8ddmr101521e0c.9.1789583475279;
        Wed, 16 Sep 2026 11:31:15 -0700 (PDT)
X-Received: by 2002:a05:6122:3a07:b0:5c9:a60c:2731 with SMTP id 71dfb90a1353d-5c9a62dd8ddmr101491e0c.9.1789583474885;
        Wed, 16 Sep 2026 11:31:14 -0700 (PDT)
Received: from brgl-qcom.local ([90.161.207.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4870bf2797csm8625416f8f.16.2026.09.16.11.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 11:31:13 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 20:30:52 +0200
Subject: [PATCH v2 2/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document the Nord QMP PHY
MIME-Version: 1.0
Message-Id: <20260916-nord-usb-phy-v2-2-2c8461bb30e6@oss.qualcomm.com>
References: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
In-Reply-To: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2042;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=jWHYzbhxv048EpoHMPucxf3ZgNESqyJpXsdJoCbLYbs=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqquBo01l5GfD/Oay4Acvv0FePBQFWTeqkshVdO
 f8JWoh6ZQOJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaqrgaAAKCRAFnS7L/zaE
 wyjvD/9meUVZs+mBOnOuTKeJ9ibjUoKZDiaud7ut02pAzWq2Dyw8fhEqPHM9fhJK8Ksb4+SH7WU
 1DqFEXV0QHZ13t1373nM+xw1RN68gynWRR9CkEMbBJQinc2fSxeeuIVG8tWQtuGwpZTE8KlMlNl
 +pA606HTkBY5qM+MKe48ysMJwTHQIKsYgsj9D57UpSM4t9XDrvt23DMbZ+ok3buSoQTxYfHFtzr
 w0PivZrWREkglzOpfetCw7jXGeo1YdNWXmwgXSiRu+JPFMyBD7yUHNf1xc5g5nXc6dg1vNmFG+L
 lAhiOSyHraIr4cZI4sgesM8FBgt5UTbLtUnZQhT+9BHqu1ag/gLoayg46jo1eYC1Ag/iHmEBWKO
 7ZlGjJ8RUPnhPv33VUbTWObXlOeR086wTokVFoF3K53ndFGeSUc9znGpt73CcvbLkJzkPjsMsMO
 Hu12NaAIuXnjWX8m4GGAwce2EF4Cderf3O19I3+w1XSghCs1HcAOZRRonalwFhxyNg9KpW+RyZO
 RkOAQwC9nbFRxfavGZZmD/xeleLkP3H584iPS+C2ljwpLW72g+WmJvtbAwDUE24JoKOtPYWxpEr
 EFAk5tsl4KsE8ovdbpfX0chwrTS7BoShw+xrqYyn5LiXSDa9lOr9B3DL0zWeh6VTvC4sQMkT7bv
 6gcvsXnCMXBU3vQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: CyrUeXg_SNsTdQJihYyBT17JGG0S4j9y
X-Proofpoint-ORIG-GUID: CyrUeXg_SNsTdQJihYyBT17JGG0S4j9y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDI1NSBTYWx0ZWRfX9QLOqIRFEtjh
 bnLWV3/oNd2GOE5tGliYbCi+pDaJKHvnAm+sDmBiCnOJetTndoQkKJFvFJhyC1oNsjh2PnTDjEW
 OvF2WklLe+oH38UEpYHtWRL4heQRs3wcHYrUILAPWxl70sWRV0CttjgvTd50qiBDxn/6r35YAto
 nRp72ECE34imMHzk56MC/D0RscsU+buaMADnIdzvQkzAl0hwWc7QL2sRP82Q3iFQB3nZetRRDfr
 BYwCUo3ys9pc7w1vjUuY5aPHEnzdtnitAEZmpQN7G1POt0aCgmcS/WImO1qnZlenJb1mhUQAdJn
 rNqkq5oJ0iiaQgP1y/XG34JtFBLbMvCIsq7v0eXqSSpKWrBQiQ+mmyxUOKF7W7hUbK2lXtVy6co
 OlxlpqFc7j+pY5Gch4qo7Pxu0cBhw2WMQpNDCZPgqNdQe6dZXgnR/uD27uyEfQwis+UKo/2FJ1Q
 qLac3nHQU8O6Vj24Neg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDI1NSBTYWx0ZWRfX8CcEIqgLhtP0
 vUvEm1CLDK9p1IR6cdQsx7aKj4C2yirDrD6P54GFmzo/N3MDLbI9H++4coIdzzRl3ww6FNm1LdW
 /fmQLWeFhrvNuQkzUBHXf1SVqPleD2o=
X-Authority-Analysis: v=2.4 cv=VIRIDNPX c=1 sm=1 tr=0 ts=6aaae073 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=BQ2oiuy6hHN+kKmom1QVvA==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=ukKPufHZZ26NhZEM1hcA:9 a=QEXdDO2ut3YA:10
 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1011 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_113117_065990_AE357C9D 
X-CRM114-Status: GOOD (  13.20  )
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

Add a compatible for the USB3+DP combo QMP PHY found on the Qualcomm Nord
SoC. The PHY sits behind a GDSC, so also allow (and require) power-domains
for it.

The block gets a standalone compatible rather than a fallback to an
existing one, because it is not register-compatible with any PHY already
described here. Its USB3 and DP initialisation sequences do match sm8550,
but Nord places the sub-blocks at different offsets within the PHY: it
exposes a dedicated USB3_PCS_AON region at 0x1e00, which sm8550 does not
have at all. Falling back to sm8550 - or to any other entry - would make
the driver program the wrong addresses.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Assisted-by: LLM
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 43e90995709f97c6c0af093e6b76367f419d41b9..13e64fe510b8f4218bc11e1c92e87ab3b02d5ba8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -31,6 +31,7 @@ properties:
       - enum:
           - qcom,glymur-qmp-usb3-dp-phy
           - qcom,hawi-qmp-usb3-dp-phy
+          - qcom,nord-qmp-usb3-dp-phy
           - qcom,sar2130p-qmp-usb3-dp-phy
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc7280-qmp-usb3-dp-phy
@@ -249,6 +250,7 @@ allOf:
             enum:
               - qcom,glymur-qmp-usb3-dp-phy
               - qcom,hawi-qmp-usb3-dp-phy
+              - qcom,nord-qmp-usb3-dp-phy
               - qcom,sar2130p-qmp-usb3-dp-phy
               - qcom,sc8280xp-qmp-usb43dp-phy
               - qcom,sm6350-qmp-usb3-dp-phy

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

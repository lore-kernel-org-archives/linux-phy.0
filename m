Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5033FC982E1
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2w8BTeur+sxrCItKjzK+fTxHTA5QIm0zdh0obrrTz3s=; b=pnkfqG24+y6Giv
	1jQDlHU67RoMxZSTMloEEuXzCpX+Htih+F9FxHq451eH1ujP0iNdn7yv4A4x0e2q/9e4g7cGdD+E5
	BOps3S1Vn6/u6CKV9sX9O0tvaa2BqlxycLh7mObxfs/7IojINUDPVmizzhuhe/Gdc2DkzQWI907Vh
	TqJevTiQuYJcDZBVvzhM+9Vs5hh0tdqO0rny7yAdvDMuOHGOxur5mfawS0Wl6He+huiui9AB7sOwW
	s7VyKqwWZdyytdRNoe3xPFMDTkl/1m9iSWVtrPiqx7NRM/Eeu2xmiq1/a3aigc+ujg77vNUtNhvJR
	guiSeW97Oo3Pr8uL1QGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cUt-00000001xpj-45va;
	Mon, 21 Sep 2026 11:47:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cUr-00000001xo2-2Xix
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 11:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ROMdPhV8eh7d+C9BoO4iWu0ECUiQI1dnpLtY/Sz9jRs=; b=hxzhJciD+yt5hHSgTI4f+novCk
	4hBq57xbfigACFvRwe09MAdtcU5A+eOIha4kfAmY0rOl73AgQVbcCAfTCl3KxXBloTmkXBz6oQVLK
	YR4evxsrs4WcQz/a0dpzPu9O661NmdQlbSp2/8EZM04HoDgsprrPKAWeMhbAQ3KgtKdx4hZj2MbC1
	0xj/0IrA8Aelh3eJQLw/kIOiDZjRm6oiiooUXJvZZLetKKfAu1uHWMRm0KEg6K/Kn/5nwJfO6YOLw
	arP8DYtKRAL0arCCYixhcaYHlsfdYtb6QaH9VT2+YWOy1k6KyIUqkgdI+SxlI1BftBFykwGXU+bgR
	1K9CtG8A==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8cUl-0000000CEU8-2mZ0
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:47:43 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAdw7i1413934
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 11:47:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ROMdPhV8eh7d+C9BoO4iWu0ECUiQI1dnpLtY/Sz9jRs=; b=ajrgUT/fyUixG+p8
	l9oahI/XFpSnmHG/vfZ3CCbD3yOZ/NL7u2WRXOObZGX48SCi1cB4dMcC/ID906SG
	IUvHA7QECeI+D+kgGq+PTCEsXJd636WiWcDDXGi/4SKMlNgQ19lI1BK40NnC53gJ
	E0aHRiPJe2yb0wmV1zHujYH74gFiuOmJd/eQ/uD0O37xntWm0dp7XZpnegxOIjVS
	ABvdBCqfriChS9+4C1bGS1mEShpJO8ObJ+/dLNoUP1DgbBkYT6zslkxedNu/Kyn+
	ecM4Q1Z8sJlLaAF6dkpvkrttBtpAewt+Rdv0mXWOe/4Kj6kDR+tyNj90h7dsiTAj
	jCigcQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gu01d124d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 11:47:34 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-91219341db7so66588656d6.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 04:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789991254; x=1790596054; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ROMdPhV8eh7d+C9BoO4iWu0ECUiQI1dnpLtY/Sz9jRs=;
        b=Gs1M6fXB8prThT0AW+E5kGGya3eyNxd85VnFHOQEiwR4pL4XCAZX0DW7u/58tzrASZ
         b9lQDZ8v9draU7lNRWhxyBIAfKsIB1vyOZheuCd20kc3qucax9Zs3mdeip1PB8V6Cy2W
         Br7HjzW3gydeGKhdkboAJZ0Ag0iZGWENDD7GyyUf/ZwfM2gluR+W+2+Nn6B5R9wNI8nu
         yGNVei+ZlLutGVSn5NhA6hdjYQqX75p8ieeVhl6sGTk5Gi4BlYKSC3Cr/DvGDKcqQoNz
         FO1n/XiF/Lolt9fX7N5HkiRhjhBASAwxmHGW9B662AhcddkCRf4KgMA/VJRBcFE7evWe
         r9QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789991254; x=1790596054;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ROMdPhV8eh7d+C9BoO4iWu0ECUiQI1dnpLtY/Sz9jRs=;
        b=ZN6atguRBs42BzdAPRY1ZiO5GO5cmbmRzqJQGT2IFkD6IDqqqnDhIk2MSyTaK8AFAz
         QZMgaPRS9cFDABD3ocm9HGsmJpyYm78BIoNzNLMprplyBLviaAAySIPf/p38Gd2sHHmD
         oC6/LuC12M9gH1e0Z4eurHVPyA4UK0joGz0H7Om11HeNeihw/Y6KPI2UvLWD8fEqw+h3
         yQ7xwQJq8bfy5JiAtoQSmigYRdeIpgmTXyKK8NSPoheLMSCVAKaSrTjy3dXQ+h5XwYLm
         5Besw+yp6IyJV4ai4wk9mIBAQfqaVDOYLVTs/7Dp23t4zcATMySmkLLjsFS1xizQIoxi
         SOoA==
X-Forwarded-Encrypted: i=1; AKwUvBx8A3p5TCzhHQWk6gZrARmidNa9NHbAJ6cN4aBpJjyoTriSuSArf/SPM8rdsgsiWm/pAwpHIhM7Kpg=@lists.infradead.org
X-Gm-Message-State: AFuF++k1OsSHyWHdc92WLNQCC2bz0ErASFFWKoroJQlkR7XFQNDkIBTf
	qaOiyLK+2KqWTGjLdljhH6UGUl1LfxrFkrJaxTtviu42Gc4UYQmq7aVvfWI0spdh2E8tQb/cLHZ
	wz5PPFXRHxWYyWtLKd1BrGUgBx++VRFeO7wA+cyYH91xuGDEYs49W5pkjU1x36WL0c9IG
X-Gm-Gg: AYBFou3YsGgTQBI+8rfcrfGSIp4o+WP4cUBhDx86mCVgjGZpGJXOF0l8hhG6+zu8tFo
	z7L0BNYi2iCWd+xPDDUuRS0tvwbKlO1DuspzsEVgOJ3C6aW0HUE8dcgWNQ34Jaa5uVpbp0zW95+
	INQbAMcbAkw1ncDKIlxnxkTAkkL6Ly63j5vJ+CGWDFFDIKDBYMx2SY24iy8s5RMhgkn8Qg5NBXR
	6y4QOB3u1rPceWF0PRVchh/gSYqG228oiYfsOnhNn3OQGD4+1Ikcjcic/wevvMLpk8tGPOXBbpC
	kO7DU6vDlfYnbOPoEk6orbFpTS5+3f0cT8psxNrn4DVaK9E2FwgZqYQIbFv1LMmB4+zfVegghYJ
	NIgNjsVhsAJYUOBZXxQdMeRH9EmI=
X-Received: by 2002:a05:620a:371d:b0:927:25f5:ee08 with SMTP id af79cd13be357-93c15ec5578mr15951885a.43.1789991253915;
        Mon, 21 Sep 2026 04:47:33 -0700 (PDT)
X-Received: by 2002:a05:620a:371d:b0:927:25f5:ee08 with SMTP id af79cd13be357-93c15ec5578mr15946285a.43.1789991253175;
        Mon, 21 Sep 2026 04:47:33 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:d04:d483:faad:1e4e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fcd10273fsm227980625e9.7.2026.09.21.04.47.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 04:47:32 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 13:47:06 +0200
Subject: [PATCH v3 2/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document the Nord QMP PHY
MIME-Version: 1.0
Message-Id: <20260921-nord-usb-phy-v3-2-68aa02b12b96@oss.qualcomm.com>
References: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
In-Reply-To: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
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
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1986;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=+RxU989r9Dq8S90POIQ9gQkbD9kCETs1BvNYgmVIDyM=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqsRlL1uYaQvA0U7uANR208QSEW96HJqpJ3eMx8
 BGkEPSHYxSJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCarEZSwAKCRAFnS7L/zaE
 w6CVD/9sQ9yVu2iHNTeGaCaPVJDIYS+ReRapVbMtPCxddI2vlVwrtJuBV+eUmJOvdswWpYitmi1
 GKqBsldMRIyKO5JXogp6bvkjg2nUzujDmPMdNZSRsEx4kRAMa0FhSBuf0LwysFrdxqJyj3dLn21
 0EfLmxbNLwMeVXiSrbsS/xuI31eOWTAlNZbY1hzpR5tut5cKOtu1489TNt0tjZqK+2yHLbhrhig
 Il/XezioM/2w7IkSx/DYs0zBkRREq1J9un9fa75IrYdDvCrlQpGy6CoAb66T5HWhiNK5WsKtjwe
 5Ylu9gK0oOMkgmt36JNEOl3bdhBxkc+QjhUoHSBb78ikWn1ZGJ8CRrXqM8PBPy+oto7U4q0rIWQ
 fpLaC91D8y2dQKgn1pMY+OgBJv1xBciIhwT3uUwP/sJwCpIm7+Kxf8bCOJYmg5rtDkt/SuVuEOJ
 YVIkprxg5GB+VW5vEU6cfuhtPB+7DbItRlkPuY/vryvELQNAlSxQe3hxwtDEesXQ8xJ0/3Bb1AU
 DPyVOviySNiFeIHDDlHEFVDy4nc0xp22WxSmsRJHaRUOkwu1wTvgSRZbNT7E4ji0H847VJKsyj+
 W/8QZoLNnUaORm/I9TCOxQF6KfU85kcwyGr7ApmznJV9i40+y+udN8QCbWxfi6MA4rkZugATKo/
 DJMGvLEQnlQdu8A==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: QAaWUPRJXQYBNQtVarX4oad9sBUOwsB_
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE3MCBTYWx0ZWRfXzYLoT/9SeZrM
 knQWLcewBwvqQhn9nyhLjKFEp9WXhrv8MpmIbJaGQK6W0mvj5YaOOi1k1d27kWuRiTIkyDyeRxB
 gUN1rbDlAdl+vWefSnqFoYbDeqMvU5o=
X-Proofpoint-GUID: QAaWUPRJXQYBNQtVarX4oad9sBUOwsB_
X-Authority-Analysis: v=2.4 cv=Ht7jiETS c=1 sm=1 tr=0 ts=6ab11956 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=EUspDBNiAAAA:8
 a=ukKPufHZZ26NhZEM1hcA:9 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE3MCBTYWx0ZWRfX8EGH6qPyNFal
 maT/302johBfJTwKfEOXU9XxAWaBQxFZsmir7EssM1JPffD3+mnhyVB/fmlbUbUOY3XqL13QfTV
 qxLhfQ1GPGQTixoxhMsXxrLgRgmGCckwyDMR8HrAbW3flZdK623PoWOWk6W1JlG3Xzmnfhyjo/A
 dI1Kt+Ewk57aDLmyc6DZN0uep2LbtpS6gsnQ41MODeOOYJZaXPj+4q+3oiHpMgT4D58eGdSwHt2
 BFc7BoAOgHcO94rnlMDxUYQw9r9evfuLE/fkEw+alPHVGCkucYwiBd3WW5Ily61gKhhMZ+S8OT2
 2KIg3XPmE7LLG6fNZMhJzV5LGVTX0z9LoVlOVNA4OMCWagNgO9hpcy8ScHikqdr1mXfzDLY+Pd7
 AvyjyYHtg+94MMkUgB4yvwl55jZ73bLz7ua1YMMrUoZXKJc3hd64J+P9nEXgde/kCoPXaE5C4xN
 qjcSxPhsgMy1w5JnPCw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_124741_746510_B671B492 
X-CRM114-Status: GOOD (  13.34  )
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
index 43e90995709f..13e64fe510b8 100644
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

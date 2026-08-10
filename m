Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B145AC5AD55
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0XzeuY1MpoKBtWzcTFG85K3qhTTXTbWj1UBNKUmDP6I=; b=B4JC52arsQz2id
	HZATYyMnTHhHDkY6LoJurAmVH7NcTdXFjD2X9jCDd6rf079sxuptcas6JPk9MXTtauRJ3/qwLziDs
	fKp+JWrfVOPjjnEEe+0EyfXUfRII69PhX3xLjPDDDqiAuJ419TqPXvo/drxUtkQdqjuViTgfzraqJ
	A50DfUdOS3hqcI1Fi8rDdwV7fMvh8Tsre1LzD/JXAuZuZ84WIayPEyHhZ29GrzCsDzU0fmT4PWpX6
	jrySdbhKLycLPk90UaFHvmErBks0DZAPOP0OmEpdR00g3hGE+e4/w3L3VHD/uTa5upqTmegvPP1Dk
	+BiAkyWdVi+QZ19Mk59A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8n-0000000CIT6-1mkh;
	Mon, 10 Aug 2026 15:42:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8l-0000000CIS3-09Sa
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:16 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFW8I91694301
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rU3nSZ9YOSVhbe0tEc9W8hDnA4xNDc4U0VkZpFIzSy0=; b=SgeQAnFQ6OUrue2u
	tzCoZX7bv25HSmH3HVJ/IWfJD7HbF1DYSwZePJMGXzZgwip+v6+m38Vc+MM5WYF3
	YqFkaeluIKvLv86RisM56hPiMmENGVHt74MuKokXif8DFOrrMT3Q7A0lJJ5kLxH5
	bi2pG/ltnTFFePNiQ7A3Su6JLpim1S5LKfz/cFvIFNs2KlmzJPDEb1R3BIwwVe1b
	85c041TpnBSBoDHc/9I3PYkyaN9knarA7RhWMe2ZyqDP0EkE1P4LoVKxXHwtTiOF
	j99j6VH3vBnMPfvdxbf4smmtWyFzKHKrFHtO8jJjvX92XTGZD/VpVnUqcZEfbU09
	5ltSkQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fyccqsed1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:14 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c12e43b98so22579421cf.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376534; x=1786981334; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=rU3nSZ9YOSVhbe0tEc9W8hDnA4xNDc4U0VkZpFIzSy0=;
        b=LiWiwnh6UNgPMFnZ+nMtzM6QnApQ1eo3iogRSmjd289NzKA9HIvhP7vorMciaD4rim
         WycGERyq9B/+u2n3oMa0wYqUFGYygUlexyvotuHdUfFF++WNvdHdsqzJ/68rmKGmltKy
         4CIPpr7m+PQFUYXxNojxA4LL5kpLmdHptJrR2iac7Li0bo4LJD8OFcqrS+iowsPQ0xNb
         oh671CdpS8gLXY0FpHXKFbpHYApTOj0NWgm7C/nUJU5w0eVhHN9MjHuK1phR0k5KqjPj
         7MqwPRE0TVQf2LyAhtFSNsRjkWexMG2YbZgyrVM8yTGfBal03YETD9GmUq+Kj5q1GG1U
         9KqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376534; x=1786981334;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=rU3nSZ9YOSVhbe0tEc9W8hDnA4xNDc4U0VkZpFIzSy0=;
        b=eAxEuSWtclKt6jn3/k9BNJrPZbSbNZ00EqcTtx9/JsvuXgFqakl75o3EO59Zn2PPR4
         57jSAiic+fhacSeePhyM+YQ0HTWSamK1XFI6u5RDrn6JXfRbpIAjfdfwOCkFlKeBeSYr
         CAddk1TDb4iBY/5b9Fe+fdRZyeAp2dMNv8pyj6ULfqzBdgQUw6kG2NWE+PPtrz6aIMel
         fTOtexe20syFBfZ3lXB7y/Os3aebwpHdOsbJFeOIHlfEamTX4pOThZMawvC18fr5him3
         2COQLJ4G6GxxBQpOXgpkwGWeawuTStze7WtHupT7R4x038Lf3P+KzsrwfZPYF0F6i0h0
         0nvw==
X-Forwarded-Encrypted: i=1; AHgh+Ro3tlW5qCNj2rnxB3TCSBOZ2Aul3rh8H8PsRXMi2+/y6rmkGruvxAxQOSvCAOX7PUZ075esnZXazOw=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywm8lYPXXsigX0sUZMba/zEaxWKVynq/2Y6lGlyo/bVBz/qJEac
	lNag03IsQo1ie9iC2Y0/SBLjPdEUApxwdRXfgh8LAWkD2ZWrKzmbge/SVUK5fH1wv3FdABWj/i6
	5qQuALYUBqtMWMgZanojIX5j1zXUZSMU3Hm0fRi4+gvmcvDO6beU6AhqhOQ2QTYRT1Sza
X-Gm-Gg: AR+sD139myUrlmiXIIkHKDZ480RgfamOGeSJQXuolrqlBZHdeeiIUz9Svr1V2K6PafV
	t16aDK37NV1LKPz0A+x2JTZ6S6KIaRPAaMGXQ+4CBe6UcuT22X+hHNCCCej1KHjpHHez5gVb/p+
	nnChMT0k2zGtMf8N3EE3Zdd8SUlBF8Y+V2G/z6dJDcB2+hxm7cPqdhKeevWVBT9Xd/rpFFZ/cQu
	ViRvZq2yNPlTvPYbRuAGUSs61iTa17OrMGkQfHFBkFo6EzDKiT81Y1WtYtqlchuAGCPwKMRNbgv
	oxFYSoEiOq+MF6YDIK/3hXPX+NnO0q7CuY2cqOp2qf1JTqZCCw689GIVvmIYuaZfQUciQIZqcKY
	AHyakZWsA4+Oh01u6JF9vfqkTw1BCM011SzsD1RQ8O+1LB1lZiStg99VzHsJhi4G8kzAqU1hkzj
	llAned6ComNMLvew==
X-Received: by 2002:ac8:6546:0:b0:51c:e14:87ae with SMTP id d75a77b69052e-52ce614ec09mr547788141cf.34.1786376533630;
        Mon, 10 Aug 2026 08:42:13 -0700 (PDT)
X-Received: by 2002:ac8:6546:0:b0:51c:e14:87ae with SMTP id d75a77b69052e-52ce614ec09mr547786761cf.34.1786376532932;
        Mon, 10 Aug 2026 08:42:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 18:42:05 +0300
Subject: [PATCH 01/10] dt-bindings: pinctrl: qcom,tlmm-common: allow
 functions on the HSIC pins
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb-hsic-v1-1-e5f93ea76ffa@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1970;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=MxJGfWyqHkmujFHgf6OYxUEmpp0WeZEB1egj1qYnlP4=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ1blxwDXx0EKhs5r8iUduX/mB8v1LvJ+OavmxPuvYp4RV
 0xbl+p3MhqzMDByMciKKbL4FLRMjdmUHPZhx9R6mEGsTCBTGLg4BWAiH76x/7OWcQ5nSctTfrv4
 mI2agkXarencdQLBcfucH8opH3VdL6B6Yu3D+7rJic9XzgqUE0u6H8fVZvdvuq6Vd/8hH9M3C9i
 sHO6bTTDSM0wW79xyKCEn26fEMPuq0ow6j9AiXqW509OlDS4HFWvyLBD2/nupL9Kd71Vt4NcLIS
 W+sdGH+WtOeC0oOq6x8WL8z8TIGOZGbwvdHZuM0iq/xzsYyF44qBL/R9J93uYFPd37Vs7aFjZl2
 p3Ld4oulr1e+1fNYe/HtHd7ZnZkr+HawPZILWCpYf2jBYqZRhu0bC2qhbkDp2wTtmharfBqk1On
 UVzZjTPlf2fXRa2ZKl589NmfpsMrdv2UVajOrb5uX9YHAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 0tUgoARVqwz0Iue34rXYOUWyLqQwe6PN
X-Proofpoint-ORIG-GUID: 0tUgoARVqwz0Iue34rXYOUWyLqQwe6PN
X-Authority-Analysis: v=2.4 cv=WNVPmHsR c=1 sm=1 tr=0 ts=6a79f156 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22 a=EUspDBNiAAAA:8
 a=ajVk9B4GSH7WaVlF-OgA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX+ZKKa0RUaZIA
 DE8K0mK9h/nxqdSBj/JcJ/M6zLfFSJe9AzvojKKCCLCwQiiIgUz9edb32Yg4E47+KrqAJovMfte
 Dlr3OFalnc1K0UhDfr5Vp62nedWtjTYPt6ZkT8Yr7rvb3kW1+Z/NNXKTEjAEcNK6qsEIBNz5fMp
 ybKzucC93DVmkwUFP41H2MlqFxRcX0SK79SQllYdro+lspDGhjYXHr7O35NFVIELcWZx+d7qX3h
 H7fs+5hUXI0Sy5Pvws7ApJEX8Defk/6EpgYcnEBp8rTfBJ5OFfvei6OGzoC8PHUILilnbWwvlQ+
 /qAV5kZ2B1QgW/AIE5k8HvyVdVk7aJ1Xht4D4l6VwLoID1Jfg4WJkcDmrVcrEzJmpnW+VIYn7ub
 l4BExXABXrEFIMOXxBdiHgevkMf46Kn2DidHKJMnYMfybOR+uPApZZcYWd8HYeM4qP6udZ3rMhe
 4p+YgijkT49VSvgpo0g==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX9r1fPAw4b3zw
 0ICSm9j29RWsiQDfA3aSMu3LGBSEq+cktUllees83xIaurFhLxmu6XTJUfsbBdkSGgXymVvav6v
 HUc+RVIU7GLnYlporY3WseHwgpWvdQc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 phishscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_084215_080339_7DCC2C40 
X-CRM114-Status: GOOD (  15.36  )
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

The common TLMM state schema requires the function property for GPIO
pins and forbids it for all special pins. That rule is wrong for the
MSM8974 HSIC pads: unlike the SDC pads, hsic_data and hsic_strobe are
muxable pin groups (between the gpio and hsic_ctl functions, see
HSIC_PINGROUP in pinctrl-msm8x74.c), and the msm8974 schema already
lists hsic_ctl in its function enum. As a result any valid HSIC
pinctrl state fails validation.

Extend the function-required conditional to cover the HSIC pins and add
the now-required function to the msm8974 example.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pinctrl/qcom,msm8974-pinctrl.yaml | 1 +
 Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml     | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,msm8974-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,msm8974-pinctrl.yaml
index a9aff442824c..d9178b265268 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,msm8974-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,msm8974-pinctrl.yaml
@@ -161,5 +161,6 @@ examples:
 
         hsic-state {
             pins = "hsic_data", "hsic_strobe";
+            function = "hsic_ctl";
         };
     };
diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml
index aec72e8c0621..e10aff02be89 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml
@@ -95,7 +95,7 @@ $defs:
           properties:
             pins:
               items:
-                pattern: "^gpio"
+                pattern: "^(gpio|hsic)"
         then:
           required:
             - function

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 242DAC43458
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 15:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ov64SuQMmcFunUQN6IlB8PjyEHJrGrQrfBqR5leYehk=; b=zcxu6YTI32fUa+
	cCMBQNICgQ5vakMAryZeup7P/m1BJ/SQWUb2uCekX5koJdX2O60LSTHeF7Nnk4tZwr8hHKxye5sOv
	AiNswYRlzz5JBZM696qAZhc75RcQGxIkER/6+TnrTQr2sGUtM8PkxnikiocODab9l8v61NROe+dYP
	qswrWDGjI1MzA9jIMJMac2PsICElp08Oz7sZwDx5dBRgQHWVO8548m69eSmUjOXcz+EP60HFpFkCs
	J92/sfo3iJtqV8D4SIPrHpQEHaahLOUt5pYeVFOJGyNJmXPB2zQ2wjHtfdByfT17FdljF0IBUKgAo
	s9h++/mMe5rAAkzcyJ5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw6v-00000007ZSN-3S2w;
	Sun, 12 Jul 2026 15:28:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw6t-00000007ZRe-3PPP
	for linux-phy@lists.infradead.org;
	Sun, 12 Jul 2026 15:28:53 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66CDZg752698077
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:28:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6oYYmVHCEVxwHI677IftGmw1eu5lSQkq+tVMrat0xLs=; b=Ut3y5NeAF0rGYtcj
	hchYAZL7FKat53pHpzAmjyELB8/90R2RsyYUcO4GOhabKssk3yrNZfBxMrExpHPq
	yy9BtsuApFRBTijlp8qecrq78jxbQGnbIJGuMPsrCi7AzexQqYPu3+5fsTSGBip6
	IRwaUNbb9eiTxevoBBSzfRLEUFCXU47MGTrG9Uu65/1y3a03hyw6RTvx28UNI/w7
	Pqp0vBj88HXCaBW/NRFAs8asvBkvdC3/2gv5iSXdViYOp/VY9EAlgwLENg7B6tkt
	uEYVyg4v6rmETEDpVhtZeuNaSqj8jHUgA2lX4IOfqK7rnmPwVRRwiLGExE1vONkF
	A6S9KQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbeamu2bq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:28:50 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-84a06bc82easo1040876b3a.2
        for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 08:28:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783870130; x=1784474930; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6oYYmVHCEVxwHI677IftGmw1eu5lSQkq+tVMrat0xLs=;
        b=ItWK6I/GZvvK9RwGLnq2LrUtH6DuVQclFwD0/Vi32saypS9doDIuaVHXSyVY4qKtgh
         +gDb6tPk5OtZuL5520lP+4fM/UECGvBLM0FcRjiMbPfXFX5YcYDfTSX/bScK4rIhIcLn
         jTLcPosDeaxHqpSMNfUo4LjU8utvwTrF2yg1nsyeg8yjF82Q0D22l2qQ7N5UwD5i5PRB
         Cs8rOlgIk95BDoGcYPJGbd6aJFh1wM1ZwERtHDS+krWmqRq4R4T1VBSLTVp1gKfA4WWj
         vOGVTpxMhKr3mM16RFrbMZuR/8V1XgggiyxHgdxX5UdzIdCJzwCktSp4jqvnHz2V7Db2
         4dRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783870130; x=1784474930;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6oYYmVHCEVxwHI677IftGmw1eu5lSQkq+tVMrat0xLs=;
        b=aGM9f4EwlfwQhSPnGXLog8OwaWW5f4MDaJrNWZ5dP5SKMmE4eAkGrQ7hn2SXOBtJCW
         /yJnhNCWlwF3cuNHhA4NL5ldUCpvWQcRkcA9ruCXPb342KLxxSk/nGZhkTVmR0PD24PY
         N9/EQhs0PFzF2KBhZVzBt/egnUiFd2ilVB/O25aSxZfOy/LnyBG4QW1ic/i20WwE8Q21
         N4hDkJa3/7IxIpTkCXzUiiGOZqOc6euh2RqV/MPLM+K1js6ZMjWvjTst1kBJ8POulWQQ
         qQoBb7wfBqRATclZTmj2R8OPSi6XtnnRQnmGfiW4dRDs+f3zTYRZsH2aUgW5sJYxKdSU
         s+Tw==
X-Forwarded-Encrypted: i=1; AHgh+RpChlRZaJXzLHqGYLSkiTiKSDFUV5uStC+xQIMJv4uxdlKsLg5gs8G5qt+mJQZsM56DqFT8nh2lsiQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywc5gaMh/M2pa9ZuLdZdZmL9uLtSf6FgdD9Ahs6dVBuGA5ehf9e
	j0TvmMiJyXSVLoNH73hF676HH9DTItDLwRnSQASfqoAr4rf66JfmqQ7VV5loUp4hUZ7zAGUVhNt
	XAf19Rsf47bNs6b+4uCK5+YIkzhnKGwG4zK03I1jbDMkLWDfmdISjYBdjIuHIFfDK/wKH
X-Gm-Gg: AfdE7ckMxUWcSYOjiwMwuAsrJG4MV6ZVUcg1O8WVrcU7kcIodP802LzlDq1TN1XM7is
	ErTH4p9LwUqKlv3VA0R0hCXLCnN7shxOjsoncvQut8rXOse1Pnh4wZjgIvoRtD6TbrGDwYjvtex
	O9j26jcChiMJVGnceR9guxDjezxwwShKNZjoufOmJxcluC7n50q54xPZgKEXdCviRkNItI28Aec
	Wen+pplgdEeeRJvM4iJcl/4h/DzVOF3TOITtzkrmetkp409r9Rbd6uWRWw0XMrssWZ4ZCFfEKKt
	qcKKgXv0kdSqaVijHKBRnJDXLLWfu8tkBZBxb00XGvxJV6KyWlmBoDJTn/1I0SFx8n3mHlWRo2j
	nzL/DLpSSGt9hrg+Mj+/bd86o01ig5FEkxGUfu4NTuuv+eKyX6zK8x7yP9qUBRa1dik0pqvEXCF
	OFxEOp
X-Received: by 2002:a05:6a21:b8c:b0:3c0:b943:f984 with SMTP id adf61e73a8af0-3c1109e29e7mr6280590637.3.1783870129861;
        Sun, 12 Jul 2026 08:28:49 -0700 (PDT)
X-Received: by 2002:a05:6a21:b8c:b0:3c0:b943:f984 with SMTP id adf61e73a8af0-3c1109e29e7mr6280577637.3.1783870129458;
        Sun, 12 Jul 2026 08:28:49 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-311935fd091sm41458776eec.24.2026.07.12.08.28.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 08:28:48 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sun, 12 Jul 2026 20:58:34 +0530
Subject: [PATCH v6 1/4] dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy
 for Shikra
MIME-Version: 1.0
Message-Id: <20260712-usb-shikra-phy-v6-v6-1-1b3e51bf1541@oss.qualcomm.com>
References: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
In-Reply-To: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783870119; l=953;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=n32F+WQzySrIX5iVbHz5HeXrQoNod4+w3vtYMUcs8Ls=;
 b=ryjiLCuO2VfGEfymQNq30j8UDQcwYsa9Y14VCb7mbDWBTsA3QglgrHbzkDluT8+b7c5oTYcUN
 QK78T+bZWRICYSYsb/V4KsCUc94iUiuVTDHjdwp4y6f9V0+KTJyC/lX
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfX151nSGlSnjwq
 N7rX6sSqzxYYHcgtPFoRMXTFyjQijKnR1p2MKbqf/52yLRDD9L+eU8ZGrIoKOECizVzYTfUNF0r
 qt/uV30HqADCG5q7gNZQcP/llBtzmWg=
X-Proofpoint-GUID: vHvEUoayv93VkKxXtwCcDsR4crKep08g
X-Proofpoint-ORIG-GUID: vHvEUoayv93VkKxXtwCcDsR4crKep08g
X-Authority-Analysis: v=2.4 cv=dJSWXuZb c=1 sm=1 tr=0 ts=6a53b2b2 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=ybcDLLt5cEg1GZjoCqQA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfX5wzpePs6oLJr
 awTmWqgLkk6oKBDPrCHmArJDG4LeR+y6Ff+0CBGVGal8lNoRG++4OGtNb3AEGPLgZR8j3aOmyCn
 GKeNAFe2Uihm7t0kXCL3YIBN8WP9SACy+4XVjRuiSDT/z5HkZOCKPrIfltCG7s5tjwmXbrEk9fg
 w2T9iINNw4WdsyEhZIP7n5MWUqTSrn517pj+9QMg1ekWGosEGZ7pOfvbgRJwcKRZb/QEHbg7h4M
 aYRQPwD2Hc4eru2aqNOxqfVE8Vsk7dTRoqDedZWjtCzpQpLhyVVR1Un6MBvpnEsO2zHftw4YH2b
 zQhwXHAos8WtzQKL/97xEZIh91eV5gwP5ZjHEDJBo81TbAX7Whcd9lx6eL2zcR83MyrnFRSl7u0
 q26OXrItxNCVZujdjS+yDeVGW5I1bnlTBnGIk2htS4vlcCNr9CcE6W8gmwCgE4RK5TMk/1ZweGK
 ksuNpUYj3qcHBe3WmLA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-12_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607120165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_082851_967678_A3ED89CF 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
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

Update dt-bindings to add Shikra to QUSB2 Phy list. Shikra SoC
has two High Speed QUSB2 Phys.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 449c2a7e5fec..001fd0ccc985 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
@@ -28,6 +28,7 @@ properties:
               - qcom,qcm2290-qusb2-phy
               - qcom,qcs615-qusb2-phy
               - qcom,sdm660-qusb2-phy
+              - qcom,shikra-qusb2-phy
               - qcom,sm4250-qusb2-phy
               - qcom,sm6115-qusb2-phy
       - items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

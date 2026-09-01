Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0413C624CF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 09:51:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stm6yJRw4jbf0pWxK1v3udp9nHgC7hDOsf8Jc785WSs=; b=mnVSw8FrQzxjLB
	V7GT+NzvdkKEdujPt1azwuKYu5b2YS9hx9MoQ6Kdim5vmjB+7Y2UbUp2jGzGhmHYX2RnWjvVM6Nt1
	WPwbKZU6PiSxpxW+YGVYUiXziAzeqG9tSFg42uj9Du/SlbUtX2g+nuvLQRJBIhHH9bBbGqaHp+jnI
	ARxg9XDEiUqQTikaKuLc5cDCynBFJ6aI8y9hxC89OmcpY3VkVFhvwAnDWIQjJ/q9IuvT8I8D+zLpp
	J6XCNnRfihwJiZT5pNohKrJ0SKyZ7mWcIrKGTErxS9XnBRGnKUYoGH3DJHA/sCxI8F6Gka3t0L2wQ
	EGd7N5sldmUkdXjDQKrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9T-0000000BTeA-1lig;
	Tue, 01 Sep 2026 09:51:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9Q-0000000BTdI-2Ns6
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 09:51:33 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68179G6O2561947
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 09:51:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=UvKym6aHIK7
	EK8GspRQJ0SdMsn7ujRvAUZ69QOH0Tt0=; b=BKI+A8mzQyOyxWJF6Pr7gOITDCG
	YXMBxzDOwswcI5+N53qt4YHv7xEhiuLZTFgTNMh2jjLEeXZO8YqFRMSf2nuR2NKS
	BeABuKWedVawmbGPxGXFeqf/HJkus2Vp0I7fcmmst6LEgcj1sL/xHkbMwDroahK+
	dNxMyg1WF/6qLno21vswqpUG7zlLM5V6JfOcXmoqVIpW4dKMs9Wn1uFU+6K87SeH
	30ODe8Gq7ui/mX9+vbo2QW9nsiHDehoXDvHu/8vVk/NZyzv53zWyGd06pe0HFfis
	uWY+TPBQwLfI1OoAWz1W19giUo2kWAS4Eetln7hSQ2cPC3ZDbzOnmZcDXdA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdeg3bqbm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 09:51:32 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-398dc3d8f0aso1392822a91.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 02:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788256291; x=1788861091; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UvKym6aHIK7EK8GspRQJ0SdMsn7ujRvAUZ69QOH0Tt0=;
        b=HYFmzC3EGruBP2iHLCwV2fEa/N/UqxEVBgic7SGLhjmifagCfUYpxKWuHdOt0ENbsd
         v5jkKrfGio/SJUfj5DqvbO3trCSt7ElXYIVBjfOsy7T2gLF7IbkhJPsBy1dxsKWsP6j4
         v3gaFvEIXq6HoMKqazPHLVXSZFU3RiH5gtBUtKA4uNe6z5iN9ioH2ipHO3IZO4luSo/h
         1vGyWXB1l2l2BXrpBXv/Rr01Ot6DKiFaL2VzqzWDBAlwL1AldjX5uLKLGX7dMR0/UITn
         8Ibk5V/csPhB5xhzu++acYDVALzFRzdIMjY+5YLQ/biv8cMEljyHkjIow8Y8S/A1Jl38
         xiDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788256291; x=1788861091;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=UvKym6aHIK7EK8GspRQJ0SdMsn7ujRvAUZ69QOH0Tt0=;
        b=VwHFIPDtQIRpsNNqUIJ2cBfKROHkn2kdAr956v3Ww3CzZreEvRDtTJcYa6+X0IK2Sg
         0iSn+/pUXC6k5Q98FWQmGCcJjr15+HV5sRkcE6SkdoebuS0XeK+pb8xH/pTcBg3uLiHk
         5MOvPGBlonQhdtHNMzC+wS4dL61Uz20QZwzde8zl3Fu/EjWpycjWxDl2mPIbsNqaC0m4
         WnsiFLVDYUMUlSW0o1YzkzVVCdGZu9qAeJV46bDFDik3quPzV14KhNoWKmrg+N+sV/fe
         x/awGG/8H+LEIXCObijez1nkXrQSqYhnMlMLMnZeQSFeUXQOz1mrzmZC82urrIGCL89k
         Hpyg==
X-Forwarded-Encrypted: i=1; AKwUvBzQvA28KGaiJ1RMirW5tRKFYaEZYkq14kp4t29Q2OrxuazxoNf/bCGIePTgmL4+yXAmuLjGrHL7blE=@lists.infradead.org
X-Gm-Message-State: AFuF++mMe1Do0IWyHCk8NN3kW3SePTvjaVmmhtgoydio3fEhK56Gud7U
	f51s6E6f8mpYN/+XtfzExM1oxwZ9bhvOPFYxzIfEy4YG4o6+zTRUvolrSJo+8857DPNb0wkGoae
	DCjeiOogsYIuZ19poJGo3BfbhsKKFbae8XE8aEQc5fmhM65Ocm4A2IOsBr1cX7IHDVQwWX61R7x
	nQ
X-Gm-Gg: AYBFou1V46RoA+M8gE7eXH5m7fsbq+A/G47li8mBI/MbmS20Oaw1E9NxcwntpEaECH+
	iaLut1qxrU+BjheGOAZPbR++kzCny9zTKLfi8ZoMu5bHy5D36jJSlLwudXFp9jyqdka40GB5aTW
	xENTWB05KQVQ0bcmXUZpUvTUupNGzzuAossoWQ//3C1zvBGpoEmBstyDIuBUkuZhJWLm7CVM/tF
	Pd8+uZlmmx0WJ84MJD9dWCZTFxkC0QIZbNqkvs7IkVFZh6ZamG1PRcvcOOn9ZMNjAM732/CTW6l
	VktsMkqS5TFALtfQFro1XaVaK187z4XXvmAIhJbVhuFth4ipGb+tmgOrMUWVRNesOLrulOEQhW7
	8l8lQUV/WxO+TyKHNDgN2iEleNS4fB5drrdXtS9lg2hFe/Q0pQF5t21mJBWcr
X-Received: by 2002:a17:90b:1f92:b0:381:10a3:8b10 with SMTP id 98e67ed59e1d1-3990f78b130mr4966297a91.14.1788256291388;
        Tue, 01 Sep 2026 02:51:31 -0700 (PDT)
X-Received: by 2002:a17:90b:1f92:b0:381:10a3:8b10 with SMTP id 98e67ed59e1d1-3990f78b130mr4966236a91.14.1788256290969;
        Tue, 01 Sep 2026 02:51:30 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286fa37fa5sm40641466eec.29.2026.09.01.02.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 02:51:30 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 3/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document the Nord QMP PHY
Date: Tue,  1 Sep 2026 17:50:54 +0800
Message-ID: <20260901095055.42229-4-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA4NiBTYWx0ZWRfX33mQRzTgzr+H
 9rDzn357a2hNCvmAiwPooX8IUp4FIMbi5DrLdd3j6a5GEh31CXQYcbb9cRYeAvgVlFBhfQ3z9vc
 Tf5rMWuU6J2WIrFDmQr7MCgER2ooVrRbN9p4qGKriPzyyHO8d6u8g6g6Vq9f0KALQKPtGW3hn9Y
 RFMuxyBqSMgepBN/p2k6VnpqLREu8so6UneL5EW/IKU7MHjtdRIVyFZuMW6ahX+mj9sw0YBQohT
 VsGDuj7em/0XawCKvy6zflsWWHoXMFOOQmxqYs18Y84C5YpxZYkoBITFq6OUmrL42EazgccaZ0t
 8l+Q3IV66shh/PbMMMv3lLMHJw6DCCBgWzlaQa07baGkeDMaCMk96DiQPmLcjHbtq2IIuPNkf3S
 YHbf0qA/jCdWWGMjUs2jq5J7Mah4iBMHCxsWBeM25X0EBrP5J6Cy7Fb9D1brl6ZA/Zlxy+crSPZ
 FmCraMMDkAe19Din+Qg==
X-Proofpoint-GUID: hZwToGozk2Mcfeox5ygmvnP39xBka-qy
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA4NiBTYWx0ZWRfX7N+tagTWVqiI
 naUpenjqcxRDgqVJ70ZZAS42M4StK5mHZ1XzjQKhs+2kMRd7w+mW6srsy+XNfATbvyUXljRs0xt
 t/tMQp25l+YCY6xoD8ybANWmHCKhQSM=
X-Authority-Analysis: v=2.4 cv=NZnWEWD4 c=1 sm=1 tr=0 ts=6a96a024 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=ukKPufHZZ26NhZEM1hcA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: hZwToGozk2Mcfeox5ygmvnP39xBka-qy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_02,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609010086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_025132_638402_6A4CCE05 
X-CRM114-Status: GOOD (  14.33  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

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
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 8adfc78108fe..b5ccc8b4d8c8 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -27,6 +27,7 @@ properties:
       - enum:
           - qcom,glymur-qmp-usb3-dp-phy
           - qcom,hawi-qmp-usb3-dp-phy
+          - qcom,nord-qmp-usb3-dp-phy
           - qcom,sar2130p-qmp-usb3-dp-phy
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc7280-qmp-usb3-dp-phy
@@ -212,6 +213,7 @@ allOf:
             enum:
               - qcom,glymur-qmp-usb3-dp-phy
               - qcom,hawi-qmp-usb3-dp-phy
+              - qcom,nord-qmp-usb3-dp-phy
               - qcom,sar2130p-qmp-usb3-dp-phy
               - qcom,sc8280xp-qmp-usb43dp-phy
               - qcom,sm6350-qmp-usb3-dp-phy
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

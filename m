Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1FBECD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 18:44:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=icdZ/zmcjum1+MkKCznSAOzrcggr3sa+x/FTKcllImM=; b=19a622+5sWoAVj
	xhu4AcwAyVkzFoh0So7P3chqSEhJx1A8fVVw+KzRDUTFD/xgnTcYZQ4ta2XMQY1edOLC1nidfkBPA
	+sBtBFVhraz6NDZ14qNDzgB3DwwPEQOECoLL+Zmszp4EUZqm62/RCC+BbusQjfsyBEO3g6VfXp1zi
	v9Bgb5OiqbLrPGsG0/pj9oHQZCWZjo8tYe14sf/OUWLvChhRQ0nEZRxOkohLYjYTXE7nbBZQOOXat
	UQ7hux9K3YLvLo9y+s37LXs+enjysyVz2v/X+POl1powi8NRN7wRhHaclCiHZ7c/5tDf5RzeG7VUs
	KjyoIIQEdgLNSyn0QWPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwlM-00000002rzo-1Rgz;
	Tue, 26 May 2026 18:44:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRwlK-00000002rzH-0eQV
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 18:44:23 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64QHgubo2260818
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/HUkG1zS7sY
	fX9vzya4QfQZieHxpfZOiesSJzF31FrQ=; b=CE/Aph9OWMp3t8t7pSld6vr4s//
	1Jx6lA5RuKCv0zHByk1HAaJdD4E1FXy9C48R3KbGrmtWEEZKIJyEuM10mGaAUVYT
	gVvtbRypggdGK8Mc/aMcTJiFRVA33pZEaP3PaQn+m0RXTicnTNu2N2S0U8POOkaM
	oVeFj90gTiYTp1thvFw5LSUuL20GEWatmFRfFb8CUILhzWCaena2C2620HF0DJ6j
	Kq9OU9iaL1fVPvmaOBZN5W2+aSA+DinhQDnyP8SW0p8d6bFFO9gJQKfz4cu1UXhe
	rOo4Exr+hBEdNu0Ow2AcnRdjfEJh/HhIiO/D4LZliCaZE5Fzk47F5sggtVQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4edg5p87jt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 18:44:21 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-36640d67817so2568291a91.2
        for <linux-phy@lists.infradead.org>; Tue, 26 May 2026 11:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779821061; x=1780425861; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/HUkG1zS7sYfX9vzya4QfQZieHxpfZOiesSJzF31FrQ=;
        b=V0z4WtNNQjiNxlgLpoOAlS0qYd9zq5ZUqfv30tajG78KcFPAnyqxPBtbnH/yG9MNN3
         aXqiS/5sT3AdiDyIk/Le1vxa3W4z0EyN2moPdL6buBTWOR1C/6s4scrjFU/Vcj1JVEks
         +UZ/mSN/7EgO+WPQ2DhQW15u+fCAw5L6iVDgUjuXOlt9LQJb/4wiwGrLr0/EvihNH9HU
         ehZ9ZqjSoEtPzM97wB6DYR0kmyN/PyDEF4YBqm3qJtSN0Av2YAMrxRedsNM8mUgqWZYq
         Ehh08+GEnulYTcQm5UjabI71BlHsfU5IzbpIGJfxjD5Wf8js/dfQYXGeQ7TJ03FRj7cB
         5XMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779821061; x=1780425861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/HUkG1zS7sYfX9vzya4QfQZieHxpfZOiesSJzF31FrQ=;
        b=Mhn24cShdM012MZdxwHwj0LUs5rBayEJNZwzF5a09qnLKl5FIskWyEbhOlFfB+LbjG
         jbiB6ZenMvLaP8VFwJ/bThMqzC0+xwnSIu0Ing40fdm3VfyaXWFYatitbwtT0c3NJc5k
         Z6yr9oDS4KBeefgSBNIN7gS6SP5Z4bzfzi6QLuoQ+6UzizJ75XWjXWK0rVC29N/crAW+
         m8rU8nDxDzYREUTJeSHDAzKcjDzYpS1nTd9wb2yUulW+fN+hPs/PLQn45U0BXtvqXNf6
         W4Qcyv8uRgmEAjxLezl+DFTUiehwCjL2CDMnVca/lqKTN9MxYc8WcaTMcniYG1p9Wm2g
         HHbg==
X-Forwarded-Encrypted: i=1; AFNElJ84U6zViuVMCBEUj70xhYcmEz8KAOGuqXoUpSsFwwLrCJSLMufagrBdsUBrkWYjks8abl35CaiOAPM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxfz9X5iK9FaxOmVWREdvoqiEzcpOtncOQgwoDuBCvJANTf68V3
	Tol0Wlnw/laQpThXr2IzN82Yl1o/07Qegq1YfblPlR4zU9Qfx0LHPQZhihWe75uRGRKE0SFLHRL
	n3ecDtg0kcKoUjUWOBBpS6pnyUuxtXQBRqpfqYGJx7qAdc+mImDpS+ZHx2kARmc2nDZQ=
X-Gm-Gg: Acq92OGMKqLh9xpqY09+0prbwwbC1tZp7RBWBLM6ZjFEA2bPo+W8sH+w9gv5mgG9bGH
	wO5fT3fJ6CAD6DHhgULDEkS0X/t997tw+7YxqRJC5wTkJ6NezaWDCrV4NK0BuaavqWWPJyqldAB
	7CK1gf9COnbAnQXLPANyl8NT/6ajB/iM6JImwVJJGuWM8W0nimn5gDJQcnocwkAV/ryQABhcd2M
	493VsojJ6C0xOmJH1ZhA14k8pMU9QxqPVB1xi5xd5FF4Z5Aa7yPtaWkf2m6szf6//7pG8atW7IV
	PKXNji74ZYSVvq1HqM6/5CF4H5LltVqpxrvpsi1h78HNJTf2er/aVk8L1qv4vLzacjEcDeRqoGA
	azv4ldH6P8MpTPTNjG7v6d21jYBOB7aP9EpRWij7Oafg52Nz+76q/NQ==
X-Received: by 2002:a17:90b:3a08:b0:36a:5d43:2448 with SMTP id 98e67ed59e1d1-36a6741f979mr10705395a91.2.1779821061154;
        Tue, 26 May 2026 11:44:21 -0700 (PDT)
X-Received: by 2002:a17:90b:3a08:b0:36a:5d43:2448 with SMTP id 98e67ed59e1d1-36a6741f979mr10705369a91.2.1779821060706;
        Tue, 26 May 2026 11:44:20 -0700 (PDT)
Received: from hu-ppratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36a721c7baasm16866628a91.9.2026.05.26.11.44.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2026 11:44:20 -0700 (PDT)
From: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>
Subject: [PATCH v3 1/4] dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
Date: Wed, 27 May 2026 00:13:58 +0530
Message-Id: <20260526184401.3959717-2-pratham.pratap@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
References: <20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: EObNmdyODOlKyVZ-2ghJ850LjceDw6-L
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI2MDE2NCBTYWx0ZWRfXztdcrJfVuih+
 P+DDYfZDl0aIIBi4J9iqP/N6JnvJAxEpv7o+pRdQkwumnuc6lJnRFWKTK/VbmZCWYz7cG9DUzXA
 2hQwvrr4hS0vuTg8/u+6zbRSdinsiw4I7QMO2Ep7wr+C9uvSo4YaKw86XZXNEtxcAub/DWijwsl
 iXbugtM9CDtMiUnf0VgWFRyCrsVWRcsV64Y26uBMuWnrFC8TEAfOFV8ITAtWHAWf7sSTsiz1n6x
 yY3syjPgfxr2GdS5JxLHpJ7RUf4cnSP2H40STEI90BfEcCGOdg6KfPS2RFnYdgySLNfRO2Xs0p2
 iRokX0Dus0rjufKmqilbR+pSA6KpW8o9vFDZcs3KBB5VMh0xImy1zyTGK8JhS2OK712Mv4UkRZU
 IjmDs0ltvE9u/2Z68tkUH4OxYXpxP1vP7x0zzgMbtF4HlfGSBQEt9lYrJMjJqszcvbs9hCIKUQm
 dKAUG/12j/wGojI0xKg==
X-Authority-Analysis: v=2.4 cv=I95Vgtgg c=1 sm=1 tr=0 ts=6a15ea05 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=H4VnsNtwn-kQcSS3XXwA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: EObNmdyODOlKyVZ-2ghJ850LjceDw6-L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-05-26_04,2026-05-26_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 suspectscore=0
 malwarescore=0 phishscore=0 adultscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605260164
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_114422_201353_EA1C16C3 
X-CRM114-Status: GOOD (  10.96  )
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

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Update dt-bindings to add Shikra to QUSB2 Phy list. Shikra SoC
has two High Speed QUSB2 Phys.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Signed-off-by: Pratham Pratap <pratham.pratap@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qusb2-phy.yaml
index 39851ba9de43..ddbddeec6fb1 100644
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

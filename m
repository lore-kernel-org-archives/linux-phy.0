Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CA46CA5FED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 05:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y0httsMXpk3LeEAtbt0jk17EBOc/3OF3QMCr2qeqpbk=; b=MAHsEABiwaMX9F
	sFPSkhhT5fk+LRNm/XKzK4XvDStnqEhMDfmWkPHnB+K7zP556IsGdakjgS4Dg2AMHo/+jHJ8rcOBS
	p2URJRlvq9GaX7f/ITNsA0ynsSYfB/A1htSUMHvUfqYqGHomwy7opRamuJVDp/zfmfqUC3Whi58wh
	GdRJGysn6NUd7h6Jvg8fx0HJ1kQQvl11QCbF9f9bmgjWhGClChU3viYtVqXYCxquioNc1lnmQK/i0
	zsCTmv4GOckk5ApRDzZyb+MOD8A78lqf14oL9OH6U6ydOBHY8K0E2g9/bThJ0ABu+/cT189PcdIHs
	9iALMA42Wd8X2a0avUKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxk8-000000004D5-3H15;
	Tue, 06 Oct 2026 05:29:36 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxk5-000000004CJ-2WU2
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 05:29:34 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6963AVK5093785
	for <linux-phy@lists.infradead.org>; Tue, 6 Oct 2026 05:29:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=; b=QWV/zIxpCFh3Diwj
	Tfy9Ifet9hgHGVFEFRIhILAzfCmqR60oX65JKp1ifM04x5K4LYJu9bXxe9m0PvWX
	AQl5JCJDCbG/OZGKqqwJtW81ENuxrtB/zns0AMNMGHqOS3xjBvFIUVMazQ4ecDS3
	IABwSC2b5BAThXFDglrCvmhNFkF937wtjxIhatn3P73F0W+2fS/Qh9IXnYT9OLa0
	bDDlDNRcOON0EaI6LelGy8cwMUXHqTtG2H+dugDsQUffVAgsDTgMJX4itrB4kT1B
	8uHA+caXf8FY1Ved6YA/lIHpvuciHCStWQ4F1O1ZUTu8Nrx0DsOoOBKUxmVQxGJv
	Bt0fzg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h49tvurr8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 05:29:32 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-33baaba6371so1546113eec.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 22:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791264571; x=1791869371; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=P4RaGUbqCtsa1ZAcwBxN6nTrS66GZvje+qiUPulbw+YxR2NTyT1eJgz2Qq65CFBV0y
         /YJCeQE3njjjB0OnWeto5Y/lhVRucJmQcomLI1s/Wv86o3267i+I9QmXmaY7XrdKmYfx
         6PI2HykywURByxwIhJstC4y2p0vNUKvW2wSJORNmHRmnlThVA0qLtOv/fgLZ20G4O77Y
         FilegT3IoQHszocQ1wGWaNEQm0iWjito8o2JJta0kVGw4l0I3n6keF1E/f45ReRp5FR8
         w0jbzzhU1jX/Yre+MII1wypj2gQqO76mpyyEXk9F2pGKD4CWViqFipd3w3dncbYZBf/J
         j8jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791264571; x=1791869371;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yxOiia23GtlGiNnaYrLL6nmn5DZZAppKMl6jIYoOE4E=;
        b=0wUQkoaMAObe6LYxyvLYlpYwFRZi1cGUxZKbw5NDDS+RA7TmJyhnMyT5xES/4K93Fw
         uPCK6RCFGYxwtdEVXAlm0fCySgV+GU5UY7HGXJfGQKt7MLIF73BwOH+aDqNFFlK4mMQ8
         ifUWKCQ43gr+HV51JsnUg+AFA/61lMoZzVUaKxTgdcchACErcrHLITFBwCiCcu36VP28
         LuWlGHSFQnTTc32fLYpazE+ThTqtUPzg3+FCupHnagPxtkMylxghg8/wqqZEDM+7umi3
         J2QIuXI7esr7O0Z7A476cCA94plG6QMHwEZm0J0Tkfh0l3cNShJeOKOGcVaw4IgV1pTa
         1QRQ==
X-Forwarded-Encrypted: i=1; AKwUvBxpL4Nha3RZrZgEek1ayZtpdYlqTAD00Q+EWhkRsG3B/YhHfx6C9t7o68OFJ1CPQUYaDjBTQ8VLCfE=@lists.infradead.org
X-Gm-Message-State: AFuF++kGmeXuS2T2viQmIl0EpyUuVIw9udUoVkS9iuiqVW/8UWJ2WqxY
	wHDzel4IYOtKewYfMN5Kf+V7ThfuhJfvkmYSmdhgmuuyVxKbU1ssl2A/G4pfYJ6GAbHPhwCdhS/
	81oKHukVcaGDnx6cj9Ow62RA8YpQfU5lU3HBg7v5uqo8zqXTxuRnJLBFsQH5qnUzKkNtB
X-Gm-Gg: AYBFou1oSF0g4/i5XpaFGrwMcURwuruInrYPSvp5XJkpGMP/NRJH7pbO7X34y7OSvdU
	oXbb4KXK0v/FhxnnTbn1+eVxDcB2z8rCrNhQsqYJjMXgIOkVK3iBqhYZ9evAkTkv8vYrVhv+wd7
	xT68o5lmmv9U5b6xriWS4FJAEEi2u9XxvpKH6ADrAP2xFKbgyjvQH1rwSAKmA/DaGQo2AirDrX7
	G4BkEHsDw9zILwR6h8Ul6hmMRQFamUWOS2Rcijonol0sxWiDcDVHjk15JgljQXRldHMX73t8ZFY
	UJk1Kf8GN2dNvRW4OCtuW2m/Ak+I4nyUH3k+XCtTA5Dt6baY7+YK+FTZqHOev060teX3SqWa/7J
	LkzceTpoGaWSFUYe8Xl99/ZuBnqJfjNqabHMli5F33FADe0ZX5/0QhIzVkefvNzXpSqukDp0BGB
	p5kPaFNRi5XDpwUw7F/zTx9TCsBbOy
X-Received: by 2002:a05:7023:a83:b0:151:2e62:fe5b with SMTP id a92af1059eb24-15eca7372f4mr662328c88.22.1791264571130;
        Mon, 05 Oct 2026 22:29:31 -0700 (PDT)
X-Received: by 2002:a05:7023:a83:b0:151:2e62:fe5b with SMTP id a92af1059eb24-15eca7372f4mr662306c88.22.1791264570619;
        Mon, 05 Oct 2026 22:29:30 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-15d85781d49sm4017403c88.16.2026.10.05.22.29.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 22:29:30 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 06 Oct 2026 10:59:15 +0530
Subject: [PATCH v5 1/6] dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3
 PHY
MIME-Version: 1.0
Message-Id: <20261006-phy-v5-1-cbe9330a6449@oss.qualcomm.com>
References: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
In-Reply-To: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=aN9lOr9m c=1 sm=1 tr=0 ts=6ac4873c cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=CyeWGLuohibXKJY0YOUA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: 67BzmcIzdEZ5ls9GLQfR4uDMbWQGjZVk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfX6VBpGT3i5Hrq
 1FOD+hpJLKACpdxFWv4zJeQDUN9TRd0G28IlO1nMOoqCKXINPlG/hHaebrE4JllQzMX6nkl2p0b
 ACWaLY1N+p5ONCRcq5JGw+yifip0qVLnmezGOj/y1uIZMY/1xrHl40nmrqCXpAWsDNjGa32S9iA
 tQ608h82YkTH+Y2JHimpCgoiW2/gaQnLYUnc1KfkXhE6AZ3VplCCaWiiCb8naH8e5lc1cwYkaWC
 0GvAlpIOgwbUCz+LmlqUcyGBTsCHf8Kdh3vsC0V0C54T80RZGNorVUMcv/9EcjwbgrbwVupvy11
 gi2zeEgeh5sPgzNCC9KDNkT1yWbDWuOEYWhocgad+8Qhu3lQoa7dRLwP6ITrNTmtTKjfnxSQ2wF
 98G0bnm1njag8CEhlk2QhMerYp3WiH3Vi5OT1acyoRczoVw/Jmuc7bfxO+hdkjldz7g0PzT27e/
 IGssyMG/4UqRiAqlWiw==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfX4TorRVDabqYl
 aoaPC8Lnot7a7eEnCcCn9NBSOKRTx5VGWpjE1KjCkY+aFaOKX0fZ2bJp0Fmpx8xDL++N9YcmXxK
 KroLaNQ+wvBFUJTLkeXvfnMeIicAr4w=
X-Proofpoint-ORIG-GUID: 67BzmcIzdEZ5ls9GLQfR4uDMbWQGjZVk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-06_01,2026-10-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 spamscore=0 phishscore=0
 malwarescore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610060021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_222933_756683_2766FD77 
X-CRM114-Status: GOOD (  10.70  )
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

Document the Qualcomm IPQ9650 USB3 QMP PHY compatible.

Use a standalone compatible because the IPQ9650 PHY has register
configuration data that differs from the currently supported SoCs and
should not fall back to an existing definition.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 01342823e57f..746c5a331f48 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -23,6 +23,7 @@ properties:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,qcs8300-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
@@ -102,6 +103,7 @@ allOf:
               - qcom,ipq6018-qmp-usb3-phy
               - qcom,ipq8074-qmp-usb3-phy
               - qcom,ipq9574-qmp-usb3-phy
+              - qcom,ipq9650-qmp-usb3-phy
               - qcom,msm8996-qmp-usb3-phy
               - qcom,sdx55-qmp-usb3-uni-phy
               - qcom,sdx65-qmp-usb3-uni-phy

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

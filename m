Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52D96D2F7FF
	for <linux-phy@archiver.kernel.org>; Fri,  5 Dec 2025 14:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74J2KlFB1NaL17y9JmMS0FioWyBiGB5HwWCe11ZnvSw=; b=POiQ+HPu5hUYaB
	JdDQxR9BjW7GS2cTBFZT8L81myBq97i+OaBaaFFLBchMz37eolunpB33aRa93VStEWotxtrqzh4JJ
	nq/JsjwNCNDIgyitUf2W9wkTOa3juE267llhKL/IB37z/HGOfmS4JYbXlAFafovEevT6/qeMPAWPU
	ZVXZtwSmx7jHX7fui9UKrtHDTffjQcMBWSDL/6e3G3Wi4tA05hA4GD907VL2+X+rT1QUE0uJ50alm
	GhSD7Q0Qjxj9dRIqXcW8xRtxWG6KFXY6Zw80IYEE9wj2rxz/QsU6SJCZMq+Nyv3UOr5GwF1rmbeyX
	9x9SSNzLBZ/yM1iiv5mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWip-00000009aA5-3u2o;
	Fri, 05 Dec 2025 14:23:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRWin-00000009a81-0Kk5
	for linux-phy@lists.infradead.org;
	Fri, 05 Dec 2025 14:23:46 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B58JX5Z2517691
	for <linux-phy@lists.infradead.org>; Fri, 5 Dec 2025 14:23:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KpL1ZCAi/bl6NzNe8EooB2p+xF2dmVy1zpbHfekK8nw=; b=ajoheosNf3z6w+nU
	6xA40b+t68I95QRK2n2ew0Ln//Fyb/lb8UqxmrqRYvgk+knVR6Qc2PcD2kcmbA77
	zcugMwXAVu/BU7C2n0Q3IcYbQBfZnxdsRE5nF0MF6yUJbEi+0tlWhTu4pPw4zxBU
	SA0zuilDuO/M53KfpGpCMRvyTChjQ2eTQKKSpjWs+9ZmqiKEkLpi5OAj2vdZKN3Z
	nyaJMnZU2dAl8HYOoe2cPwIrChIcNuUVx/vqP282cCsyQWyK/YJpV1959ndZgiZI
	yzv7vB8P3ca3R4ouqd8ONs+xvgI77zxDno60p28Auptj8IESRtPDu7wbl9fm9HVw
	PLUbuQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4auj7n2e7a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 14:23:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b53c30bb59so493963785a.1
        for <linux-phy@lists.infradead.org>; Fri, 05 Dec 2025 06:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764944623; x=1765549423; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KpL1ZCAi/bl6NzNe8EooB2p+xF2dmVy1zpbHfekK8nw=;
        b=d/Y1a6165TiDzAAOyH4jAhxljDGNOh0YWrYwB/5aY6c33nKiq7jaPBNfE9LKPnw2+B
         lnvDMr4RHjG+RPEg4K50HVIF9p1dBv4GGP5YEBs/Z2EKeBTCKkXs1diPVXuOXP9pCDw5
         KvE4jApec/URfsrt0dPhYYQca7TOHR+tcka4icVeJjs6b8p/rs9tIo3P1RHNpf63IM5K
         AotsS67RCCfRrFPvS/IHPJMSCrpdPlzCz7CTWVNuMeHy8Cd/RdBA+yCls/J1t9xFolZe
         /BO9bfc4sngnryaGpfdY9jNELBW5B8FSLacCrO4wjwl4ArmqYm6HKiUvkD3uAqOHOKnG
         ymzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764944623; x=1765549423;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KpL1ZCAi/bl6NzNe8EooB2p+xF2dmVy1zpbHfekK8nw=;
        b=p4jOFQgsdI9eSrZSyM7QbQUGU3n5QnwgFZ13dhkGUHtsdJrh6gLUcM4sJ/cpvpEmmJ
         MsUK3tmD7UyioI+5P/itxQPlieSz5euMZFvEEPx59dTmA6nDZn/B1kr0Lyy+jKVIj0dX
         AyNR4T4+jlkVYjFyN1G+uooisRFTrVBxWffqYH/sZ2wVtqkP1QJAxEhbkg7Bhrg5w8yS
         gO9EBWw4x+nGgKB88sE7gAjrLbk4pay2CSrZRNe/beOBu6eFIRXGKJyHUk/2wWsBz+xD
         a4I/p3OyK6gOC3fjyKOmrb2FxIsfilEn5odAh3v7WS3JgCREdGYjBTahcr3AZc76wB88
         4xzg==
X-Forwarded-Encrypted: i=1; AJvYcCXAJLXNG14w62TA2hyAnTseLOgZ4m/ldEjwWzNpLgSoI40lXYoIJlJvvy8IDPTVRn75nWmU/CRO3Eg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYBzBdc4NZRAvLVZ7u4q8+1vBrMS3H+eyMGjmZ6aYTwOhcxn8z
	Xm1u+mAEwKNhUwh055eQcC/FZ9B7rENczVLYufz9/iYAg5BdGu7QHiwxMWq9cr/zEOLsHk0CKwM
	06AnDHkRopVUwm5KssG7MWFDonXAegVtfHITRdRGnswilejpLJn52GbM9O7sJhp+68ThXRgTZbl
	0s
X-Gm-Gg: ASbGnctv0O69sCEEjJE8cI6vb6d5Pf4Ob3WxQDeX57bjPXGklyduexZQFDOnUvCyiGq
	ckngT0aa0/i51Fn7MhCVPPa+5hTv4rvR34WSZIsSVLCzbb77Xt+gWyFiGMbgiB3SiBtujy7/fey
	V6pJrvMa0hHANHuKSn9TTJSoCkI9uf0KmljZXSAqG5t+jmFtTCSS33YZG3Q0+Ki09yDtL9O9C0x
	1l7ux6563IkmPCnXjYr+wUZgRlLXjFGf5POgm2RpE6r8g7pG097CzuKO3LiSd9YnVCSSU11fsTV
	2iaOFGott5BCm3FLHEJys5k9cDFGosJRPZhIGc5JJeRa0FrgscYFTwCU5T4UjeQPWPqpoYKRZ5U
	EBD+rU1PGnxiXnNU=
X-Received: by 2002:a05:620a:701b:b0:8b2:eefb:c8a6 with SMTP id af79cd13be357-8b6181ebde5mr1026505385a.88.1764944623165;
        Fri, 05 Dec 2025 06:23:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHup2SCd/gh2IpnEn1N/wtFy3Wz9q8vNGu5VpdX7RGFCFLfkYZEo0Wx7NclFib82W5Vg4TNWQ==
X-Received: by 2002:a05:620a:701b:b0:8b2:eefb:c8a6 with SMTP id af79cd13be357-8b6181ebde5mr1026499385a.88.1764944622632;
        Fri, 05 Dec 2025 06:23:42 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331df0sm9414161f8f.36.2025.12.05.06.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 06:23:42 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Fri, 05 Dec 2025 16:23:21 +0200
Subject: [PATCH v5 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
MIME-Version: 1.0
Message-Id: <20251205-phy-qcom-edp-add-glymur-support-v5-2-201773966f1f@oss.qualcomm.com>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
In-Reply-To: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1246;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=AaogKH9/xxrfRbTLXrUVe3RNsCYBntk2k416s/czYdU=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpMurlJukjdqWbBNoUet10fKcTbzpwtwke4gNy2
 W2QMH2oAsGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTLq5QAKCRAbX0TJAJUV
 VlukD/9ogyxLBu6/01Var4hq2k6HhjswBOML6K8oL3KXUdJoJHtqobF6L7RcAUOdJ2P7oB3xq/g
 84cWdRUb54AM68WSMwCWBlpTGZTZZDjnMT6BOph+0jyshswRu4r4aPOXNYEjW3mrZolq9V1DoNL
 HBEpGKEvF1xYihMh6x/cMj2/wLXn8YU7tsykW6Cx7eOzEYPSdvk2To0HQqO/1R5GJp6otHHr33O
 DVG1m/jVFbKsDhidlChBJFZ15wsuiQHjgxudwcWYDgsUCjbJ5FvEqkvBRGky803HoyMFjdHkrQn
 lreDLBRzMdArZ/qLDXiFOD1CQBWUj6L88CiGrWbuxP5TjCCclO7y+ulID5SEbwuPNBy2lS6WMB2
 DqEzqVsEFO1Rz03IEfdUnlpE3bnPl30P5km0MaeG5KcytsvQFJUwHSNry6kGc99IBf3jmeLtnkb
 4lRa92t8aSS3kgJOt9B1HJiHUk1sEZIRR59OFaypcaMbHDM/ghIgfTWQdFPQJ0Z/t18LP3qPLVw
 OM3tPETqt82lnnEWwgev924XpdikRBSiojVxu3/DxikbNbhCaBDUJNO7L8JrD01olGdNdeB6pj6
 ZGvObeJw10ezTk3y1NxztgVfFHvvMEyguSkDxv5qMJDRTKYX1H8P8y2v6VQSyt6zP1nu/yS30/6
 V+b7FnZhqvYv4MA==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Authority-Analysis: v=2.4 cv=DOSCIiNb c=1 sm=1 tr=0 ts=6932eaf0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=EnfBGAjIh6IkBJmaZGcA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: EDOC1HjxnsKUslgRMrxLhpr8urXaf2rc
X-Proofpoint-GUID: EDOC1HjxnsKUslgRMrxLhpr8urXaf2rc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDEwMyBTYWx0ZWRfXxX22JHjJlTKe
 GxrBXOI+z8mfAWHqGVDfRK/p6TiQkTjXCxgOALBhay0MEvcmPIUjcuRhLIEAEpH4IavrmU9Npmf
 zI1Zx5j6KQT0dSNB8MDJvGNLsSqNxKOyBzVd8Ch9Qocl2Go5OPwHwNxJMiRNwOTHV/ptVMWAH1E
 y84G6xhnrJfLqOoUC4eJwyO8JLNpEQYB3mJaGYAv18FqlQCaq996eBXC7PNCO9xTMOWnQ7w5s/n
 mtFQzQIHg8E0yQtHR07u2IQHNxNoHzUKMBUEBXN//QTuUmCywMWe5q81f/4qK3wTMIVpphJ85a1
 UId1cn1SIPPW3D8Ahk5u0ygf8CRW8i/fT3GuKtaRnFsBSoTE39OSb5bU401OT1Hwn0yvqpOatjL
 4RYh7ZtHNeQZBOzfVDDTLzJ5TyJxXw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 priorityscore=1501
 suspectscore=0 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_062345_259446_FD96D826 
X-CRM114-Status: GOOD (  14.02  )
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

From: Abel Vesa <abel.vesa@linaro.org>

On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
registers. This hasn't been an issue so far on currently supported
platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.

However, on the new upcoming Glymur platform, these are updated along
with the rest of the init sequence.

So update the size of the array holding the config to 13.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 06a08c9ea0f7..f98fe83de42e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -32,7 +32,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

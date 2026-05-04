Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEE09CD3423
	for <linux-phy@archiver.kernel.org>; Mon,  4 May 2026 08:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3HMdPr27NInVrR6AU1GU6NBoNBEAuXABWuf7dnjW1t0=; b=4Ymj94oHaRWOvr
	YmgG/LohRt4jQF59jtWULshVzA2BsM10P7FcMEJJTUSpuIzfFBJW74apP41ZLcNriEgdYgM2hn8iT
	HC7sw2WttFlnuT5WmqQhzQe7s/2CUnCNfWOjngTpKcU7SHySdacW+Yevk+AnjpJWIL1pXvnuhv7DG
	5tbQQ0oPAEUho06Rp9tcrsDbc9XeBugRJy4d0gJd0EC5XPq2qZtnNg3OuMk3gIbd0id7bCITG886N
	iVtk0WJ5Z+ky+QPG6jKnFjOZ+2utH31lt/tysneRpYHh4te9BvnbFtCKH8hFWUdYO6J6clXGh7KJP
	C9P8HE7Ww+07UtmYZQcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJoS9-0000000Ch3n-2zVq;
	Mon, 04 May 2026 08:14:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wJoS6-0000000Ch2w-15sW
	for linux-phy@lists.infradead.org;
	Mon, 04 May 2026 08:14:55 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6446DLMp3505192
	for <linux-phy@lists.infradead.org>; Mon, 4 May 2026 08:14:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=nfNktoUxXUD6+d/5pvB4YbxJkjpwKjoCg7C
	QaNqUz0U=; b=kv4QrLRVJA/A30mIXZYDosDt6I/1PiiR8KoS+7hM/qs6HgMA4k6
	fyLrWp+r5T9kEyPuotHQe23DkMFo0dN0Bp6Z1mxcOHAdunbTRItMPYDQ9rpfrNga
	6hN1IoU4Iv+OcW7Wo6iaEphkOWYna+N2FndXwkEj+YfI+Mg8hJ3qrgUn7BkyrNzq
	e55Wja247QQpVGg9Xv8UUb58VdfN2rmNXnIuszwTTecQ7kXcb0uBA/DSGYsQRDe9
	7yiiP/QitqChlt3FI6pBwD7cOsQsnAuGQeLd7cWsYFmd3PttUSQN0AD6nbpzdQE4
	tTWOImkhuDzUM+bu78boHJ7voIyuZaUn6rA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dw6yfd6hr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 08:14:52 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2bdf75bc88fso5907473eec.0
        for <linux-phy@lists.infradead.org>; Mon, 04 May 2026 01:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777882492; x=1778487292; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nfNktoUxXUD6+d/5pvB4YbxJkjpwKjoCg7CQaNqUz0U=;
        b=Y4PrvJbya9fhymE3isk1hFwEwZN2TJq/j0FMMTmqh+myCAHlIWz5Nxyz9xG04HDj/G
         sMtU5Z2GXPnLd/KvdrVxl41kL+ZBS/JLJhZ6P+4bhdNfjZzsHMy8fWHovdBsCv8CvGW7
         rA8dp+JOs1rUQaQDnuJq3Xfrv3RhUVBO2dNldv8Tfe0PRXpp8UbG1q2Q/8G0iE0C7r9A
         LYEDTY3r/5HiGS+PGwLK4lohW6q5AvUent/bFaVhhtNi/gPi2p6S6La3016cYKA8PWw1
         fWmqxla/ijQAm9OlC0x6PUk1bgh/al56yaoWY+SnnWthSo8B20DUDZ7t4TvkyMcHdssY
         RgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777882492; x=1778487292;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nfNktoUxXUD6+d/5pvB4YbxJkjpwKjoCg7CQaNqUz0U=;
        b=OyfJCyj52eYcgDTR8350gntsOD+my6HiptmHDDwiSxbNAeQoRrXXXdTC19QQNkTjTk
         jvbWyTr+QqVQsH58oeWi5bg+jsai4wVD4nQ4+0dBxEVE1o6nx8TNu8IIffiu32p7ozJF
         XgpPorT94SOLBr+iaKnuIWnXu99EoJiJxQHmkyb81cB35FH66MLTM/3Y3Ve4Ux3jZ5mD
         /U3PhYPp3UHHMctBQ8Nj0NkQws52Io95yGlvI6J5M9TDkUuZG9Xcl3nEdKLkht3dTdOW
         cYPpW/HDkKL1Rb2fpH1jiYdTPnHBlxo/uPXv3pTDf2Pc81uiqBS/T0/Mi0U6zEPoq8pP
         jyNg==
X-Forwarded-Encrypted: i=1; AFNElJ8VUxGiMxwwXHYm3vY80pyZj4RKE3Z7ntdSd66ij9Jqij36VSM9qToi1b3mC9yaTCHIJlL2EfqINGg=@lists.infradead.org
X-Gm-Message-State: AOJu0YyI5JWmEWwdZpjZi7TkgJ6SNuZdxL/urYytPSrp+WWaVU/iragZ
	H1ArX18vavqhu7a4oLoRx2l3ZeDU2UkZRmCVBn710O/RJR2S+d/wsG38QmN7cEg7mWNmUxNVeR7
	8RZAP6TixEhAEX1F0uLX7f/hH+jD+wC+RscLhrX4GIKgq2GbfYhskZj4ER7LmJoVspxcy
X-Gm-Gg: AeBDieveYj57lxrbiWQ5dxZ1yYOmGBGwuaRWmFpQiWsiJtgexHBVPnjAHHnf/Sm0gEd
	d/GkPjAOtIiMsV95BEHy6Z96ZlndK/q4+kdScpP/O4kGD6Wn2J68+PQ+jZrH6Ufh0SAY3JiFopN
	88ExfxuuULbN4dYEtWEakEv2ySuexR+ZcaZjtRjpus1GHdvuJlXTZ6owKmB+t3COEeC6Gm5hjGR
	5Q1+cmPNVlI7vY0WK3IWymqknHQ1/VAybW4/hUxXHuYQ6oReUidDykcg34dlxLd0LMXSRQi6iRu
	n9J+cVh/eNiIi9FRMcNPpKg+EjEAhRdnv8C4+jpN5aCXxEtsh0FcfskSlXqvBARKWC5znV4bbA3
	kyyOPw4oiYEcBCduL6UUL40IieVX/uwPDXTRS+/mr/KALM81Ui/dde4OALfn8yjuBbF0nkpb1OK
	rf5eNzJLFIfPOCeWMv
X-Received: by 2002:a05:7300:7fa2:b0:2ed:e14:e956 with SMTP id 5a478bee46e88-2efbaa9db2amr3069690eec.32.1777882491921;
        Mon, 04 May 2026 01:14:51 -0700 (PDT)
X-Received: by 2002:a05:7300:7fa2:b0:2ed:e14:e956 with SMTP id 5a478bee46e88-2efbaa9db2amr3069682eec.32.1777882491413;
        Mon, 04 May 2026 01:14:51 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ee3bc6a79esm17450886eec.26.2026.05.04.01.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 May 2026 01:14:51 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Deepti Jaggi <deepti.jaggi@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH v3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document Nord QMP UFS PHY
Date: Mon,  4 May 2026 16:14:42 +0800
Message-ID: <20260504081442.825908-1-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: QzRWfeWRuW5VV_bIgJqED7pVKKXYtDev
X-Proofpoint-GUID: QzRWfeWRuW5VV_bIgJqED7pVKKXYtDev
X-Authority-Analysis: v=2.4 cv=QY5WeMbv c=1 sm=1 tr=0 ts=69f8557c cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=-P_PvXqPkIm6cR4a8nYA:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTA0MDA4OCBTYWx0ZWRfXzyYawNKOOPM2
 5Fm2xEBdNIsq1INeZ1cDG+/lLpGK8m4LxGSPeXCXKJEuPnlnlryZIdFoeosqc5lNPc/RtbUbdQs
 CakWqP1IFFHP+enIpyLVgV73qnB5eMLDQ8E95P30IZUB4c8eXroLQm23d8qIeRBu0qfmr41nW3C
 xpPzmvzbiN9Mb+jMRF4cS1eJl6oyNIa8c0Ts8bhVtKzEoanTetVHU0M/6OJZZUKt4/XNtWxxE5u
 YWdU0+zuKZacZqfGFZwJ54PMlVQe34ZAEEAKsfzS6AsdBFMd8wkSXLIKsQ3JPJhPjKxidFz8eSL
 nUiYkv2F4Inf26LtmeIEMGZmzi+mELsZJIBbNM9Rw6/Lgpk+9ujnqr6R+Iefn7lzotPDv4OpXjI
 p6iAGdFuOahE2gNekdthekxPe6i6NhZD7zYHiiHdskIYdLpYRrYgRcFEtKRO7USkFTfV5+GR7Ib
 ixYgu/NumbUutpPA9Pg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-04_03,2026-04-30_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 bulkscore=0 clxscore=1015 adultscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605040088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_011454_343610_D912B7C1 
X-CRM114-Status: GOOD (  10.08  )
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

Document QMP UFS PHY on Qualcomm Nord SoC.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
Changes in v3:
 - Improve commit log to drop "compatible with" part
 - Link to v2: https://lore.kernel.org/all/20260427012732.231611-1-shengchao.guo@oss.qualcomm.com/

Changes in v2:
 - Add Nord compatible to existing qcom,sm8650-qmp-ufs-phy item instead
   of duplicating (Thanks Krzysztof!)
 - Link to v1: https://lore.kernel.org/all/20260420074942.1250414-1-shengchao.guo@oss.qualcomm.com/

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index 9616c736b6d4..b2c5c9a375a3 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -31,6 +31,7 @@ properties:
       - items:
           - enum:
               - qcom,eliza-qmp-ufs-phy
+              - qcom,nord-qmp-ufs-phy
           - const: qcom,sm8650-qmp-ufs-phy
       - items:
           - enum:
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

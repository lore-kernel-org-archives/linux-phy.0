Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 029DECA6019
	for <linux-phy@archiver.kernel.org>; Fri,  9 Oct 2026 10:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxZPr8U3VkxOXwl5WTjcHDbEJ/sB55ueqMLwKNKe3O0=; b=IVuxcpA/Ruy7JN
	wqFs0TorL9F1eeEBUujM+kRdwWk/GZ8IfWli2LGEMznuLfKjLbjigbFMMjjbmY/bPm0fZ/MRB9yxU
	YtR6l1GX7MqxnH8OkY83HLqpan3sNn2Uaq5FqCyd1vFW6s7VtXRKYUJrkQ0u686z9+9DS29HyjDe9
	fBdq/2X0aolkvRF8/umbpRiSNj3pbd635hh+UuM+j5PdKGnKDbZQQ6HvjuxO8C0XYAWsJimdg79At
	uHeqIMH56i9M+NnVG4RxpDEs2T9FdNp0rIT1MDUsOYtZt+ApeK+ZLEqk44hL3u+XIS5LjD5V9RZBq
	HEVrPmBmfV9WDTkMsIpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7xl-000000064wy-2ozn;
	Fri, 09 Oct 2026 10:36:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF7xi-000000064wY-3Lly
	for linux-phy@lists.infradead.org;
	Fri, 09 Oct 2026 10:36:29 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6998KGOc2257140
	for <linux-phy@lists.infradead.org>; Fri, 9 Oct 2026 10:36:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JcqK3nQJsAx1QPTt7FvQEHKJzg6BbWDfOeS2ApKWAz0=; b=dlWos0kS/vAqciuz
	1fk2cKsi4pukeSW3VkhkJpz572AO7zgMljQN3TUplhtNiYdqJLyq6uHrisEv17rK
	wfV0qJ0nQG9wbSUutLnpYAz18M+k4H2plwUf50l4hA1S95MBhK51krwquahp4lyh
	NS4spaJcZJ9t3XyU0ZhpOXCA2d6RDLhc6j3wTLapQ6/9TPXK9dmHQLK093YtLJ45
	8zxeyd8sjcWZeXpJGYqS3fiRrWaOVh65R0uVXbMfYTdacZ9ugd37UJdX++jBTe2K
	3s8ZGJ9LOgjQi6O/p4eeeBX9fAneyos2fQs906qhrBLccKzG683eZGZiVAJlY+zY
	UauSQQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h6nufsxe3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 10:36:26 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-38f97b3f853so8286181a91.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Oct 2026 03:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791542185; x=1792146985; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JcqK3nQJsAx1QPTt7FvQEHKJzg6BbWDfOeS2ApKWAz0=;
        b=WM1B/laxzr9OVah55dhEaxtRM3naIwt/uuT62KqgqI/bih6RWZzYo+g2T5C3yUDd8r
         UqbSLBxrNbt5OeSFtE7i8IWl54ql6ZzXWNl6+9lC4w1sMhAGFsRUaUrJc0rI5FhQMo8o
         QYiDM+eAqv65DiRIrv7TmxMozZjRZ5/xBplym+rZpkFPGniPGUBS3RFGZlWLCKYMYuCu
         VhaTFR+GkG5hIaJaWF6z72bI+2vvtHrTxuQd87U0efZp+6u8phm08ITiL5E7f4XT5Fsz
         lGmE2yIr8ik9NSU+w/i8Up+HUTWEWsw5imvk40Dg0dUOue13tFNW7x6xGbybxCRcXv+k
         WCwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791542185; x=1792146985;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JcqK3nQJsAx1QPTt7FvQEHKJzg6BbWDfOeS2ApKWAz0=;
        b=YSNONhF2hCPQPSVh5cYwstezuw488G14jGx0sFazvL3ursSP5LXmce/rsIb8lGnA4z
         29Y/CezY/GpzAtdZQB2KpARehFmGsAEwvoTP9y/roiLFhyhXR5ZlQigWRYGwwKz1KkVW
         LTuOevzYXn2DsvfSAFM7KXWl2/jYuu/qTi7smJuBtVwxTEPwfovJjZKval1cFnvnTWkM
         aEi65FD434VKC49zkFoz906YL/7nv66AgMZhjTxpwlgyRS8uJmX+J1odAIAEXxwID1m1
         2tC2TPKDRUeBV5Wkj6WAj+tEDSM9i1nZ51RySuTiAgfT6fCNkELz6fj+5AAszsytYdAT
         w/ag==
X-Forwarded-Encrypted: i=1; AKwUvBzW9RXAL9p81t08qamiBJ3wE1cwUdSodPw8aximfIakeaIKn2XjTYvt+tLnBO/44OkEld/032y1RGs=@lists.infradead.org
X-Gm-Message-State: AFq9FYJhZNYmNMkCW4tmzgEtwoeqjyZHATZCxHvLYporctA4OhtiYmra
	AoWsE7fKlPjmW8Omfd9/5UYyXXc59+3X57zrlEqFpYhpBvscjkH1nCxUS7HbtwFb925yWTfBdWC
	mhIT8450/I0Lk/muPz0aiEORGiDMnDAJ6rSPB2fwTlmWs0TndQL7yApvXJ1EXgarM0/R5
X-Gm-Gg: AYBFou2UO75rj32rEyiTKcrBhWy1FfbSu6K5rQwmP4V7fnCttaw2aJ1fgXlcH3dHxn/
	1UB6fQf83I2OWojmADDNZwEDqlM1ItHYzS9dgyjrh3G7t/HW3KiLGADp1sfIi9u8N0CuQ+5g7OT
	I0MXXDFEmJ+QhjcWPXJogUbHJJPZG+MLmcNsmN9ghNh/R0UWRqSqGyxpavHxwpJKe8OKFS/aWpa
	Y2t1qBdK77nhqf24ombmRXz6jm87rHNXzsmQoexExGYpPLhQkuNjGe80wHvwu34Zgr5xPDWdnrX
	W0Psh0+4hyzEGFpFHASuNfghRQ/8xfp/N36/tCoGtiYgOeLybr/ek8/fqDZuh3vXQYS+yK3pcw1
	Qr5S75v0rtBylox6NC0VYpZaX
X-Received: by 2002:a17:90b:48d2:b0:3ab:413:49b1 with SMTP id 98e67ed59e1d1-3ab3a916118mr1239632a91.48.1791542185504;
        Fri, 09 Oct 2026 03:36:25 -0700 (PDT)
X-Received: by 2002:a17:90b:48d2:b0:3ab:413:49b1 with SMTP id 98e67ed59e1d1-3ab3a916118mr1239615a91.48.1791542185037;
        Fri, 09 Oct 2026 03:36:25 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3ab371c32cesm2827285a91.16.2026.10.09.03.36.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Oct 2026 03:36:24 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Fri, 09 Oct 2026 16:05:53 +0530
Subject: [PATCH v4 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 Document Glymur QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20261009-glymur_ufs_qcb_enablement-v4-1-9a6ce83195b7@oss.qualcomm.com>
References: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
In-Reply-To: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@sandisk.com>,
        Bart Van Assche <bvanassche@acm.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com,
        sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>,
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791542167; l=1502;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=Yxi5c5piVGL5nj66cVK7xhnjJD3w3vB2CZvWuYrAivU=;
 b=j0jhMmEtJA+YqLldyS+bwxsUDp4NFZ743dNBsYchfU2n68dvRL+nxxDGysPoGUMV5R81MeaAB
 0+dBam3vK1vCLLNQesMKmuRJw1vgkgyq5SSJ77rx2lq1qfF5+wXGSWV
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Authority-Analysis: v=2.4 cv=afn0Dhot c=1 sm=1 tr=0 ts=6ac8c3aa cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=M7MUb3q_Ox69Zn6kGXoA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfX6Ont64Zez7zX
 ojxYF6KIGyYGBdJf01YXzq8gOf9aYnMTQwqibDGNf3kssHN4EclArkPnV5LQ8CBbh07B4swzpgl
 BbvGnrdra6M0GKLEhzQpqiZ5qQ14qSU=
X-Proofpoint-GUID: eU-3HbDrt8T8z69NuLDfklgCJf1AvHM5
X-Proofpoint-ORIG-GUID: eU-3HbDrt8T8z69NuLDfklgCJf1AvHM5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA5MDA0MiBTYWx0ZWRfX4WbgGmsccTTf
 g2PQLeb250DjBw8ss+57pQCtabTLVYV1mP0PhY64Yy1QA6a3A5r+I7t9ua/ja9F0dhKQwlOH253
 F6xVxZ1xqUgwQA6L5RcaZ9dszVEhcAaZ31HXhtxgFup0sktteg4OGdLxH9bwN4GzkJYbhMKrclM
 syKwoGSkcyJ3jMm+gaajwGlXO+7pviVg81xouyRfuBgOChN9qZv1R5xv5nq/JYv0VhNikVtfnay
 Lfke01mYLG1MiU8o5EnA2aWeD98EvwwQJTkNz2kHFNbIfBkSSaJAnuugFbz49ZddD1/P0vMwVy8
 osenQfFNp3cMWkq+/fXsO/YwAETTMK3Y+3vQkp6zWxU57jLWNzwv3MeP66KZaw4YFoBgEipvlm3
 V92z2PfmBQ0aq9x9t9prK7wxPGHLr9/aaGTjemxrVlmx9bWuiVMFCXHm118B9ZsTKFg5xBiRsHf
 M0K3/oUr8QPwtEkjMmg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-09_03,2026-10-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610090042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261009_033627_637180_77C75DDE 
X-CRM114-Status: UNSURE (   9.70  )
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

Document the QMP UFS PHY on Glymur SoC. Glymur does not have UFS PHY
gdsc power domain. So, document this in the binding.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index eb289c09906a..10435a0b5230 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -42,6 +42,7 @@ properties:
               - qcom,kaanapali-qmp-ufs-phy
           - const: qcom,sm8750-qmp-ufs-phy
       - enum:
+          - qcom,glymur-qmp-ufs-phy
           - qcom,hawi-qmp-ufs-phy
           - qcom,milos-qmp-ufs-phy
           - qcom,msm8996-qmp-ufs-phy
@@ -113,6 +114,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-ufs-phy
               - qcom,hawi-qmp-ufs-phy
               - qcom,milos-qmp-ufs-phy
               - qcom,msm8998-qmp-ufs-phy
@@ -166,6 +168,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-ufs-phy
               - qcom,msm8996-qmp-ufs-phy
               - qcom,msm8998-qmp-ufs-phy
     then:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

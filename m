Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 150A6CD4F4A
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 16:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXacTgKH3/SvjRXxu2U7rXs3OSXU0LxBiXb4MQ0lL8M=; b=dNKVjrfhZhwFHz
	SHhYrjUkAHVW/4J/C2cG/E/LXP2KZF0eObWqXJwcK8UlTTFt6oC3T4aVfuRF/KU+TD+X/9dQEppAv
	b7yKL1Kh9SLSquW9l7uyIVykWTlhE/lapv/nmVa6Et5sxT4U3DBgW4e/Ggwdxed59iEykdfR/wRXR
	9qrS8VrvW9Dftd+YG+AnOYP2ZgcUB6kEUt9NdXsB1494C+03hHbQ9Ro/SXkdqdnwbJ6AI6RRDHVVs
	lLhxoNe45+dszUEMopX55RKr0WGc6/GB7pxTNsPOqYUFEUGuClE5f5C+qGwMRnxoBvDLDF367u6kq
	OK30sBcceVol9ZNiT/Tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1EN-0000000GLlQ-35o3;
	Mon, 18 May 2026 16:54:15 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1EL-0000000GLkn-2TWH
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 16:54:14 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64IAliKG2685229
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 16:54:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lqhBDm7fYqu
	6MvZpBtGOglNbnbUjw4oExZ0wnZT6Ids=; b=UxFBqabTecW5vlb0rcdi4JEnZdY
	S2KzrNM3MalVdZP+7TvZsnJ6P7DFYCPv1fpY1NLr1BPBXRANhXP7v10aadNWe8Ej
	xv9X78RGLQ+xtuIG4ay6gR5TqYsMQpruf5ax4UEF8XO9bgQy1ldytPcJdJoLrHXh
	3a46lG/I30HxLo4bQBr0Ta6nrFzZ7jRoqW0pNV5V1cXT1rleZB28dyy7s5VcD5bR
	qbdkiouMHpduyyAFmMV/or7DEopALCJY4DYUa2JOPWFdVkHv+gA7hNa6dMH2wuTD
	Fr0AzlCS9wwTex20pF1ViOLe7sPFC9gVsH4Ed9m9NPbtLpCsaCAjXQHLxiw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e7vrbtt4x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 16:54:12 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2bc763c7256so59617925ad.3
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 09:54:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779123252; x=1779728052; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lqhBDm7fYqu6MvZpBtGOglNbnbUjw4oExZ0wnZT6Ids=;
        b=dIJiLWA18oywz/2tc/MwAmRyYHVqYuqKlLIp5yyviQkl/O7tSHKjHLG3eMXn0CHY4k
         R/faSbP3q/9WqxGb/Ga0jPUtxjMq+MczQXVJUqaYdIQQgJSd+GCGFntgfYuHfYTiI1ip
         P8ewLOvj/vesFiQkntDUwImYWTXRgfegY7asTttZ+pboYcsedVeYncs1lUCIYszwV8EX
         w+m34IKGLP8ZdP6SHf46tVP2zroJINAGQ6OUPKYtZ76AJh6NcpHWWDACJK9Y9RPNgaal
         T9PDcXZy8WvbKv0l+ccXQJRQONeHW4K7OvMfuD+j26ycHzOyc64yGfZOsYpLEFbugosA
         LhoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779123252; x=1779728052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lqhBDm7fYqu6MvZpBtGOglNbnbUjw4oExZ0wnZT6Ids=;
        b=Wjfhe0BrclS2CS9ndQwe5tF1mPJLm0dZDiC4wIkXgmqms5auiVnLkweA2w5H8+z+IN
         CptqNK2ly7mdOBEPaiVf6IvjW1EIPN4ln0xPY1CXj8pGe366Y6I6vrP4t9PSGK2FPYOo
         MBi0oaEBYbvYjyl04j0zz6CbtP0KHFe5K2wuDjqwz0Q8BtFKMYKjANc7ulsJLGk4zZgZ
         ZnLUkRssaMfYMFyEKPHMIrAawcedTp9Gy4J603Y7lghw52rpxCosgCFEOvJb5F++wyWz
         ipw9a82F9fu269sp/v/v0es11OPZ1LwbKUpYwk9F3qu+ExIwPmiwbUZY/a10ngWM6Veo
         MACg==
X-Forwarded-Encrypted: i=1; AFNElJ8u3rXrxyX6/8S0MEwRdD8WUfy3eLdL1+4eW4nd/9PNaSLR5hb8COQREIMg90UVdivi9HrYscagDcY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy1daZ6tMVVNna5TxRxjXTTswWHL0qYVd4pDWqti5kFoi4hGqM7
	V+3fdCcrcg12i/luhxFHUAXjr9vbMem3U92ZrMpF6Gk7fv7OjCEtGBU52fg9EUM5r6BWSE9oeJL
	GzQiOiJ80p73zyWxuyOkHVQayktCuwd/Tk7IOZuvOI28z9o4u6l6vvk7P7hUbuRf6MmeZ
X-Gm-Gg: Acq92OEuKJY4sk+xwuPn70KFXiAdcmPnbSTGWigti7/y8EmcbNWRPbL0yHS5qiJ/Pd/
	oVRWk0MbSLyTLhPREcEhG+LKWT//NqRBK9wJHMIlvk9w8WXL5riHrT+NtCTOvAFVsfGnMYUCOD1
	gVu+hoNt5Y/XqujiB4aXEo+TWXPEO5XmoI3ho2fiNwAe51l2ZOdzVeVRjjSyK7CI9zHHz7nqhHn
	3QyyMYdWabtcw82GtGEQM7qF/tvG1ZxPsV44IvHjmPHr20E9eLhtzaKttAeao3u8Xw6xQeYhQpS
	571LxyzSNleMKrMI9ds2aIxbS4TbZ0HhIaG16XLJKmMZhNPIejaoMr4GMucDVeorP4o0YKklWhU
	CZxHEM7z0Rgcg8pZXLEprUFk0KOLjwRK6NLwyGfu3JD3SwI/onCc0ng==
X-Received: by 2002:a17:903:8c4:b0:2bd:8fc0:1198 with SMTP id d9443c01a7336-2bd8fc01303mr150907335ad.5.1779123252204;
        Mon, 18 May 2026 09:54:12 -0700 (PDT)
X-Received: by 2002:a17:903:8c4:b0:2bd:8fc0:1198 with SMTP id d9443c01a7336-2bd8fc01303mr150906935ad.5.1779123251728;
        Mon, 18 May 2026 09:54:11 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5bd5fc47sm149971045ad.10.2026.05.18.09.54.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 09:54:11 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH V1 2/3] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the Hawi UFS controller
Date: Mon, 18 May 2026 22:23:45 +0530
Message-Id: <20260518165346.1732548-3-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260518165346.1732548-1-palash.kambar@oss.qualcomm.com>
References: <20260518165346.1732548-1-palash.kambar@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: hIhcymSYWJr68QllGyswty59XJQM37DD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDE2NiBTYWx0ZWRfX13X8JYBt0+V0
 biq1M7vqZxRKiK76NE3Fr3oBmEO3tssCRWiLIoRnYqCD/LfYjqQIrqyF/NuL4P52ngC1PlQ3u/Y
 8LLH9PPa33+o6xVpl6TdyfI3WwIj4gsWNJHd15o6azvMao+qh/3HInPrs0xYLHsIiLCOaO3pjwm
 gIvTSgnT1Q/GLgv4bMSVePEyJzHUs2Fxuz2Ua7L4ftXMD/u2hvL0gN5y6eho9unBc532osVyhIf
 A988PdT/rrSFT3zuqXuHQWw2fYgfidkUkSToE6hpBXuKOviP4PLGAABJiABNDrmvTtrGuTZ3QwG
 v7XorD/2z5LeHJa6aQAxKQ0+UQ9mrD+vRfHbHfSiyZrtpTclJDQ+0C6hOJ2MqzVdbwpvvp7Z2Wd
 0AovT59ZaMhMbhibDU0OBN2KYFsmPk839vzaBRL9pwPaz1cfW9C9JcUPSOMFEg17PyB+SiItpc7
 wIlF9u+x28jHWjS/9nA==
X-Authority-Analysis: v=2.4 cv=KZ3idwYD c=1 sm=1 tr=0 ts=6a0b4434 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=dkR0I6OD3irOzcp_LXMA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: hIhcymSYWJr68QllGyswty59XJQM37DD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 priorityscore=1501 adultscore=0
 clxscore=1015 spamscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605180166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_095413_633221_FC74F17F 
X-CRM114-Status: UNSURE (   9.44  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

Document the UFS Controller on the Hawi Platform.

Signed-off-by: Palash Kambar <palash.kambar@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
index f28641c6e68f..3de00affa4c6 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
@@ -16,6 +16,7 @@ select:
       contains:
         enum:
           - qcom,eliza-ufshc
+          - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
@@ -27,6 +28,7 @@ properties:
     items:
       - enum:
           - qcom,eliza-ufshc
+          - qcom,hawi-ufshc
           - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

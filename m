Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 199B5FF8870
	for <linux-phy@archiver.kernel.org>; Mon, 27 Apr 2026 21:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVdv7jDgLptcjT7mMYWJ8XwAjfbYtRIgs6CpmuR/CuI=; b=yqUmYJZrFGGYWw
	1pwdUs6/i89yopZJru2DNjh86tk28FoAy/yK9DDALRrgapL7YqLYxmY9eUOE6hvOElPst81zDNqtF
	4hNtm8TPuRONyBgTcoRQ4WYdywWCQeUeep/CMwLqZjXJ94CeBUHu6cyJAqNgcMG9KZS16aScjFcMO
	ln4OK/b2gtngmz66iSFocOjSAuxNPI291bPhWAKIUQaZV6P9qGFGdWfUBEOonU2EzSnTsgqHPu7of
	KaA1NjOfXgmopMDlLp0+CNwa34WzKypHHP6IL0L5UBDWpbUv0YPfA2i/f+DCZdazB/VEY1K4OpQQ6
	dltbc49zJPcShUyuwZ/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTj0-00000000Bs1-3cqv;
	Mon, 27 Apr 2026 21:42:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTiy-00000000BrQ-3HCa
	for linux-phy@lists.infradead.org;
	Mon, 27 Apr 2026 21:42:41 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63RLVU1Q3961984
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=zDhnhJqpd1p
	k5h8F7DDf/5AtkUKccW5CIznmywuGZ/M=; b=iusfDWlskwX1CDJUcdtKRQ1wKIq
	arymvLyqQ35b4Ou2gburKq7c+EaKOG3I0Xqn7OjS6onrcVJNRYeLoBaMYqgYtA8c
	BEwLuOJb9gad1NBrrsHsGI047mjrnHsC1X7quZpTTYCJmX9P1cuD8eBpdvywSm+B
	bloFTmIUSdp+ww++HAnqchO8bYTSpYhWxYAE16cHBvzr7NrWVsk4P/RGKNSs66uD
	9Pr7WfOu5RqLyYeT2z4tagJB1m3dK9pMNwZmjtqBs+Lnqf9SqJiA7gDtz9vmbdi3
	qKs7Mx9oU6kvAqam4Ho//aPoZsv2dQSadiwNMUp/6o8Y13mwh9AWVQxlHpg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dt4k33290-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 21:42:40 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ba8013a9e3so12826203eec.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Apr 2026 14:42:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777326160; x=1777930960; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zDhnhJqpd1pk5h8F7DDf/5AtkUKccW5CIznmywuGZ/M=;
        b=Ny6MBOO7fSM4E7PwjnfSoSfSRU2xX9qtIz9GndjLsHB63k08vM7SEqIGFEsSjzaH71
         cFl2m1p4Cjo3lPC7oAwahvSROZqv1r3ayDroaDkSYLhqzX6HzEhG/lj81mg6KQWm69i/
         twYMc8NdS+jxkxbErjWxSrvnCn+1aFOBNiRsW7yFAW5qWaGW2Hi5jhjUVXXSNowJdihc
         9Fc+dJPdxi4qpLrCp2i9WwTnAJ1i+AXXG0n6VRl+8c2XY3zL/TMBDic5PzcSz5rif5z2
         aIt9B9VOSq6jk0Jsmx7PC9Z+Z+e+hGBWiFgK6t4rHo+AEFrPprgceigb0QOJ80FsWlED
         0FZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777326160; x=1777930960;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zDhnhJqpd1pk5h8F7DDf/5AtkUKccW5CIznmywuGZ/M=;
        b=fcDeE4jtkT1g7eEANY0bv+7T6sahe/9ZX53peipiiydn+5UhdP5Z6MSNtvuRIFdL//
         Bdy1FreYAzB0Wmpvkuc+488MjM5iWCF2h2cOnmrRlyRdnKFPCefCSbij5W7qVVuYaSZ6
         fpmC4SzVPLbPi9MJBQj1ZAXOqHtWpcIoL/t4QXYlc1IyVTr7BpdHVASnN4BooGOlO7VY
         KKhKaHHlOiDGEodLeCQNLNeOyFgRb4LBXWkMTRqs/X+9wkmw5BCiKR/S8TvA1iO2TMiI
         HWyqTGCCx8K/xYYCa7pB0Ji/E6g+k38JZQ4MF/Ye09kG8am7tLtfPxnveyQD3RP0DdZI
         g8Ww==
X-Forwarded-Encrypted: i=1; AFNElJ9SWu8pReikRrTPjhFCLmnkwovyEyGs73nRl9V2cpQm1up/1mGX5ArGSFlZcsfD0gCOlVOttWW/mko=@lists.infradead.org
X-Gm-Message-State: AOJu0YzHmvZF0AbrOzswvnNto9TMUHcALFwyh2Py+BcCPcG9QUXRmKsq
	5E8eouy8bgZMxwiDf63i+u5kZUpLoH2lZnMd7xeflj+xkGBYknH8+t9/uIzuUdsKvrueEKj/9x4
	yC+WMpnbLmLzZag2yJFqLsq7X7xlocSoV3QR4SQ4dfi5CmhhasbNBZLx/gKlWcWkel1yH
X-Gm-Gg: AeBDiesbryskY5MaZ2ZTZzTdQ/Psk3YllfjhUASorc5nN52oCxnQH5AsBMey7wQjxBL
	oZmXIDivu6CfydiR6SpgILUoMuRySldD8Oq44OUSkarCto+dd0rA/CalJOFhaztTOc/hws8Spt3
	z3Z0sfBgMuDnCYCI0rnPcCY7LiZc8H3yKvz50sBIwnCWb7jp9yX1hIELuqLmOsInVoKSATZfza8
	f5ggYaKoiLQu7BTNdEqPvPwF4C9nNqq06uR90E8aT9CB3ctxNkxrp5MmWauWZW9/AQnNmJWvIFa
	6wpfzc5UQRfC3G7gX/b1dHEoZEzqP9tD5yf2g56OjQar9RDTZNCcjJdAGCf0jKk/jZSE0RYnWwF
	U6mUutuwNOoGI7wa+lSEbk3FwwWxEaWOEVIp4MoaXO/BD0h/4BIG8e+DVX3OuBa6QVgm6fQZ8df
	gPLp4Fqv7TLw==
X-Received: by 2002:a05:7022:11f:b0:12c:33dd:fa15 with SMTP id a92af1059eb24-12ddd9e4256mr312329c88.34.1777326159409;
        Mon, 27 Apr 2026 14:42:39 -0700 (PDT)
X-Received: by 2002:a05:7022:11f:b0:12c:33dd:fa15 with SMTP id a92af1059eb24-12ddd9e4256mr312300c88.34.1777326158799;
        Mon, 27 Apr 2026 14:42:38 -0700 (PDT)
Received: from hu-rraheja-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-12ddd927bbbsm653119c88.2.2026.04.27.14.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Apr 2026 14:42:38 -0700 (PDT)
From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
To: vkoul@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org,
        neil.armstrong@linaro.org, gregkh@linuxfoundation.org
Cc: dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
        krzysztof.kozlowski@oss.qualcomm.com, ronak.raheja@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Hawi QMP PHY
Date: Mon, 27 Apr 2026 14:42:14 -0700
Message-Id: <20260427214217.2735240-2-ronak.raheja@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
References: <20260427214217.2735240-1-ronak.raheja@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI3MDIzMCBTYWx0ZWRfXyuTbmxzB3JMu
 Ne5VSa4j1XerPk0z2M28DqbYKJfVxgXiXwnlAqFEwkcFnLyJF6Qx/dH75+P4tS3OoAEzIsIxlz9
 BRvxRrh2oB8ihx54gjSGmHZb8xBPzSJMoY6KmdZLhNrf6I1DbAGanojU7RVIitIrL56WaDbe0aq
 JN5wgdaBt87/btvFRRtmmeYS1yLPGMvCFWuYYjKDdwGF/foyKlfiEmBwjxE81eOUwpgYraOT6V+
 if06XHecBiRMDwjj0CNlVT+0tyjmR2WTKslYPmoEnyBeuj1Btlcl8Xnt2/MAkIcYqHaVLjmvgSf
 CUA+6I6/pS8VKf4/KgGOcT1lYaCyA3fMhkXI18LUXrMJMqJbEedJddU0fv6rhG/NCMA+2buywKK
 jj2fPfPkwxURZbm47pTme3nemv2UaDVr0Opq2Kdv6/XUg/xYGxrwsYVxRYB4I5LGLcmFzNq4UEN
 laoI89BqGCGJFkaA75w==
X-Authority-Analysis: v=2.4 cv=a7QAM0SF c=1 sm=1 tr=0 ts=69efd850 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=8IMiPDtIn6OAJiDpRukA:9 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: 7PR33dFgLr2m3XHe8uu9yEkJopRTRVJ3
X-Proofpoint-ORIG-GUID: 7PR33dFgLr2m3XHe8uu9yEkJopRTRVJ3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-27_04,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604270230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_144240_841479_27C5B19C 
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

Document the Hawi compatible string for the QMP combo PHY.

Hawi uses a new QSERDES V10 register layout with a new COM AON module
and hardware-specific PHY init sequences compared to previous targets,
requiring a dedicated compatible string.

Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml  | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 3d537b7f9985..7a7059c659be 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -22,6 +22,7 @@ properties:
           - const: qcom,sm8750-qmp-usb3-dp-phy
       - enum:
           - qcom,glymur-qmp-usb3-dp-phy
+          - qcom,hawi-qmp-usb3-dp-phy
           - qcom,sar2130p-qmp-usb3-dp-phy
           - qcom,sc7180-qmp-usb3-dp-phy
           - qcom,sc7280-qmp-usb3-dp-phy
@@ -205,6 +206,7 @@ allOf:
           contains:
             enum:
               - qcom,glymur-qmp-usb3-dp-phy
+              - qcom,hawi-qmp-usb3-dp-phy
               - qcom,sar2130p-qmp-usb3-dp-phy
               - qcom,sc8280xp-qmp-usb43dp-phy
               - qcom,sm6350-qmp-usb3-dp-phy
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

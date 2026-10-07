Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9E8ECA5FFF
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 06:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+BYJtFobvUVaOCcNqbOCZ81fYfLFngM2ZAHGE+KOOM=; b=1Ks20LNkAXYdIw
	9t1cUq/d7fuGm2ACZ/WTFcv+eEJRAOKNW6bk9cWVJQmLX5M/ODD+OnzJluMYrd2K+GupyPjassGLj
	4U8T+SxyfXWJqxhxhVamnVROA9VIHsoSGNKWA6nyl2QLIQSar1QUot+9TQvmJJkIhuFNVZITDpOaf
	7fz79CxIRVaTI4JEQyx0PZILgwB81sVZ6IcGlYJbfTaMwBkWIlfgLc1FRlT7NyYiegqoZBfiFkBnI
	lPCurRmDaRlIlPmX+O6vaBPreGoQQ0H0sPHemg62Ow0DQJZGKCdVTBbDUeQQbltVd7Rv6GmIzPe+M
	WYkB3iWCTV7cw8CbEvRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELAD-00000001mNW-2OdP;
	Wed, 07 Oct 2026 06:30:05 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELAB-00000001mN7-2RGx
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 06:30:04 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6974U1g53923506
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 06:30:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X5RO6KrOqtQUt/yGDo9w7+j/X7O1yX9dfy86UnAtqqo=; b=fDa+s77j/RNxG1Vk
	7FNsYIu5E2xSFIS5YPGLdH218qQfnbCU1VeB6H1rUyYJWp2kpkuSV5xV5lOFV8In
	9WPjCfgo+uvdCu18NRNpJwFE9+lpaPz1NlG3v+MctOPuVjQ2IOfDRoOGazRKJQUU
	9edZplpEErATK3Q8YY0CZOjLPHlyj14uATqUWkhfLtZpI/sBv0PN4YZJUn2E/Al8
	WUEp4j50XBGMpE9CLw5+rXvu2AGdSAxH6d2SHE0nDt4rjouPUF8nTSEN/ckE9nsh
	DBZR1hcmzHmiUwAfrk5Ypk27dix4SDMl/Uozb+DGlopuI76ISGPJjhftH5WO7Rls
	cXpQqA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5c718v2m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 06:30:03 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3a7d2f25f65so1223583a91.0
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 23:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791354602; x=1791959402; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X5RO6KrOqtQUt/yGDo9w7+j/X7O1yX9dfy86UnAtqqo=;
        b=HlvG40i3pp3DS5M9iavDTtscOhqbTEE3Y6dpV5YxQjsEZe6aKDLxGKHIEySSFOmzL0
         mB8Nc4GXCpNDUHQJAaBr0sETUZLHtrht/9h2GjLhB6/A99vgtvjVu5uOm01sfX4Kxard
         Q+XVrAV+2pFzO48yUyROClblgMODMkm6BPN4BWu4mwOVSXEMLqUGnxFcj1R7cGoa+Ifb
         ByKm5/IqgF3oNTFkV08hobrHy3osKeErikBl1JSN1jy4J0BwOSet4lz4gAaiFbNHEdp5
         Ca7NYT9ahwNrTD+LH+ZP2COEQvpmpkZpRr1Pbb8oa1hMfwU0TBjcrLzv3kzlv0/Zg3ja
         lolQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791354602; x=1791959402;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=X5RO6KrOqtQUt/yGDo9w7+j/X7O1yX9dfy86UnAtqqo=;
        b=vKNHhc44Ahy18EZA4ImxKkJedOiIcJP6eaOryQEsVz4P49IsASGJsjIHXF/dArAGNq
         iTC9MF/oAeIhCOlLtLkmgnb+hmPcSELPOdFnapkxo0drTF7VIBXPqzFukydCQ5LWzrdH
         MG4zeS0JB10Qi5OAXb8gDg3LC9OlMHeEgcNysfrTbAg36o3S0f7qVcqId3vnLmhVIn5r
         kI1YDGaIopGKev6r1vMDLqgyRV/MvaNtlEXciwhLctqSMAvTL0Pyd9/V5MwMyNGTEnVn
         Opuu3nUQPnB7gtVYuvo14yifFu+r8vktvpaOamCY+nBm9NLGiYu4uk0EwbxEDMzSGEnT
         JDOQ==
X-Forwarded-Encrypted: i=1; AKwUvBzTohkr82c3eKboJa037gtSYrMG2ZADIyUaTEqOrS1zzvGqNL9c4/PLbtmM0J5xQmw/eZq6wzemXZQ=@lists.infradead.org
X-Gm-Message-State: AFq9FYLHjm3fzEbQO+ZmvUWKLbDvnNoA4pptFIlHIyvA7zkAgrUbAnVU
	loSGVVMGJ7C1N3cX0iGd+C5czfCAEuJQhYiOJllHJSX6eWrEeOoBfpwbJj+fS7OCvjDOLAhrx4V
	wGYvc79kqYtwlfSpjXLiW8MwcCtnnnwB5Fn86StErMkNK3cVFHmtY3R3nTHR3g+xwnTiu
X-Gm-Gg: AYBFou1ZbJtW2ss2GWta/o0aZ6Ek2XygeGlPmhjote8FHBAtYgogp6evqZB9SgnsCBY
	xnVGyuKovAz/GQoMDay8v4ct850GvOAZ0dz7cF2uwaxX6v7BgkMhplO+MXjFxYkFVvMtyX1Yn+p
	ZeXFUcwHs/QSdwr/YBjjRMSj+N50BwAkzVuPc+5sHexdcmMa2nqO5wIOGZBopDH61Ahz86Jnbtv
	9ttYwc1WTG9KQCOi2HcxAC9/5/r8C/PRXjqZW73y1khH98vzAGixpuzNiDqoeUK1twaqE8iZYd+
	vCWNjj3JIQ/wIjcJVW9GvwfE1hQgpedeD7yUj1gST8bDzeh/zeRL1w1s9n2EBtJDVOmOMcXAD0I
	1aNwzajdkh9Ndn0Xr7lAKcTp2qQ==
X-Received: by 2002:a17:90b:2245:b0:3a8:21eb:2e1a with SMTP id 98e67ed59e1d1-3a8a12be15dmr869390a91.30.1791354602423;
        Tue, 06 Oct 2026 23:30:02 -0700 (PDT)
X-Received: by 2002:a17:90b:2245:b0:3a8:21eb:2e1a with SMTP id 98e67ed59e1d1-3a8a12be15dmr869369a91.30.1791354601923;
        Tue, 06 Oct 2026 23:30:01 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a89ab81bb0sm2972690a91.5.2026.10.06.23.29.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 23:30:01 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Wed, 07 Oct 2026 11:59:34 +0530
Subject: [PATCH v3 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 Document Glymur QMP UFS PHY
MIME-Version: 1.0
Message-Id: <20261007-glymur_ufs_qcb_enablement-v3-1-84cf4f861415@oss.qualcomm.com>
References: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
In-Reply-To: <20261007-glymur_ufs_qcb_enablement-v3-0-84cf4f861415@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791354585; l=1186;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=UbxlUsVad51XjlMr7BHaxV3dWnxuikGfc2t4VeSwSBE=;
 b=VDlPhQHPY80/A3c4TZb87pFj8z1u1YbRnTRRqhQ3i/QTowrosI0/f+9EodGI9A2Cs8stxim/f
 vQ8IPcNv3FtCt3aaBqHedQutRr6XTMxxNDTzejfWNzNxjSVheDLW8H/
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX3esrSsBpIsWG
 XRPn3X7Xd/UNwXZQmQykaIy6ni3VNsICzeSHU/gyHlu+vhvy1JGC5r8LtSveK6B/pXpW10QMwCL
 HRrPkP7Pc9OPIjAylKc0lKj+nfolJ9E=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX3WARCG68lZyo
 uuOwljncWgonztcuQvAp4mob7DsjjnJZqGGz+RbUgyZbnOfBlMDLOXPLm2PWg+wN+jWA6V9v9Ie
 jhHhYYT14QOBSOEo+eRoU5frMQRtIh2XXh2jcD6piz4rbUz+D/5qQttu2+E4MaWnnBb7D/Xt36r
 pA14z4dfFBASa3yK6LqMkSM1zf/roFLHIkKHlyxdwDD6vLc6PH5TgdbSFldM/hr60h1QxmEjVnL
 cBAHf603zNSgfCVV43zooBUw2sPw947hIN9UKiKvIkdT7z6ggK65TBzRzt4Oj5Ly3t5LXGb4Zfa
 XUAX7S1m3IE/VhP/HQi/RZQMruPo4fqP/vdv28rLfimXkROG/itBOPCT8Vf3lBF5EbjczAyfrfq
 DHxlrjSe5A/KVwIGUtkYC4qSG+nO8DLgmQG2g8RuGjy/DSMRFv1br2jrc+9+75PbOPPr31rijhD
 yF72rWhPzmATgSow+HQ==
X-Proofpoint-GUID: uAMfagWLdYMJ7sWkbuEonCdWjC7c89hE
X-Proofpoint-ORIG-GUID: uAMfagWLdYMJ7sWkbuEonCdWjC7c89hE
X-Authority-Analysis: v=2.4 cv=LvYHWXdc c=1 sm=1 tr=0 ts=6ac5e6eb cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=BahsdhlD1VgbZ89a8f0A:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-07_02,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 bulkscore=0 adultscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610070025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261006_233003_636414_941CE313 
X-CRM114-Status: GOOD (  10.58  )
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

Document the QMP UFS PHY on Glymur SoC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index eb289c09906a..fb631f906513 100644
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

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

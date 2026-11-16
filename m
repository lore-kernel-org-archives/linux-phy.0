Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9A5606A33D
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ezh2BUDg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=csSPYgpv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=WlZbrUqe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hk+bfJkYHPd65LemBwZZCRF+TumvS/3I/2HrNzDnnlk=; b=ezh2BUDg2F7YadDSw3wSWHq3uf
	J11U1CamuVd12Hc580A77O6NIIretwYL2J1O/ZjbR+6dUaXrHZk4BJ5zWpWT0uedcArw58COetji+
	mMw/akzsKE/2Vve1Y37yk7ZruEV/9aJWWS2z6t5gysBo33kbEMcp4f3quHekdhUCqWcnzMARVSRAZ
	mvoAVLN+KXh/OARlCINRJKCcCcgPXns6NKraiT9fvusvUBfYlQjHypafo7SHW+oHitYbefBauvFqp
	dCp0Y9IBi9anebTRqU9Qp+m+j6ktt4E5o3L4GUvulJaHEC/exl7EXXt44BSl8sfGoSpDTzVWaBtK1
	Lh0KccVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwal-00000002a57-16K0;
	Mon, 16 Nov 2026 13:17:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwaj-00000002a4j-1j0F
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:17:50 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AGC0vtj2472483
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	m1nTZ+XmUM2edjkyIuwrtLsiCwHaExrIO3F3ymxsXr4=; b=csSPYgpv+XU+65Vi
	3IwiCvKaI4srMZSOpGLCdepiYGV24awTPbgW8urs9f96NvoL8wnL6bSO1Z+b3yev
	1vWzgxnu2B9usVFO7sguTQnWHV7xkwiUYzwPFHy3MZLc2a3Uu7SKJn45zfNqJyaP
	wKAmAnuTTbLpRFs4aMviuUpdZ+AG38+6EHPBP2y9PmICIZsZhsu6GzowcUUvmH/g
	3oMMrLeslKeULrqxLoAfNYbzf5qrgh/cIyG7p2uizVLnqMplCkalN4/q3TJD3MBV
	vkDkMLC26E5xLVw7cObJz+hqTdMkz5FA17UCZHegzO8G22/bzOXgpiy1eMFZ/xvF
	pyhL2A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhhdxhnk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:48 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-9495876f8beso396026285a.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 05:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794835068; x=1795439868; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m1nTZ+XmUM2edjkyIuwrtLsiCwHaExrIO3F3ymxsXr4=;
        b=WlZbrUqeBqFHGIAaWh39GOKuMtr55r73XqfvPFd7HFBvrDgqQcaHFGCaPABhLUtTFA
         CE5BJAkRaa48CilcgSEty2zV+IJjGdytHt0fiiM+VOt7Ewk4SWjgCjU7wEcFEw7R26lM
         8+7jvCqha0Ioaco6xctjIQ1FznJUwaLJuoDtcyvDFWYyDbSR0jj79cZt1tt6PJ6sbwpv
         nrUb0mnGrscExI1u3u7O/1xMYBhIbTjqcn5PV1YYkO7vZOP6cwhuXPVkFT/ghmOsK3Gy
         uos+utoDwaH4IjGQwvBTg5tM4i8a590JQSKSC5owFkqKFyVvya6CFg68QfP+6DgYEIwg
         ZbgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794835068; x=1795439868;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m1nTZ+XmUM2edjkyIuwrtLsiCwHaExrIO3F3ymxsXr4=;
        b=fzx6P8epEHTpgn0ZIbhqNkWr/3ZOng7zemoOWZoNK2lPht2fTUR5Qij7R/r3MnfSPY
         TEbCxIZrtFLPynGGT4SIPNXD6zv+YA/QAgKi52y5nsmzvCeYoWjr14FQj5rV30fNifOz
         lcMchDZLkQ8Jy21FZuN7g+zJFIebiSwrgEwo5uWC0D8LpyNcv/gijzd1k+TLm3/RO92n
         kMbytECFYHWqQ6etkG+kq6I0YPSjizkscyxtfyqT4YD3aYMVtUWulU+F4hzqe+NEBEJv
         FcL0ZLm/w760U0hffLm/axYQGweeeWWETeTJX76241iS5vFb5JTrNv3wB4GzJ3miGKc0
         NcZQ==
X-Forwarded-Encrypted: i=1; AL+hErGgpuG0jT7txRTr33EXMb4nbErv4UUNSnNacDNW6pdrSTcJGGsNpwZs46N4VzysxAthrIqjn8f/B7Y=@lists.infradead.org
X-Gm-Message-State: APuU4Z/ZdSgc5LDm2Z0+feEuR73dtPutqfCX34JR2wVtapkEMy+aSrhA
	e/IaRtt403PVJ01f7S9PwboE6Mcoyhdf8WA+QY4fB57VuBbiuD8hP3B5a8ZjBNJML5vQsaFAeC+
	6oDXavPQEgF8iXVatBPNSxX0vPzV3WJWgiKSpETTTQNsbooX2VwS4SrLZYUxvDQ6FcbeW
X-Gm-Gg: AYBFou3d9tX+eQJciMIl7T4FrxbiqdAvqMg5M1Om/QKlhRw4H67IzfYsnpuokZg8Z8V
	L1AQl8WMSH8ErSVoHL3JG/YGFiCKKBzihH4H9sE8ap8iLwYhXl2qNMda4pR/f5cwYNuZBYRJrPs
	9MCuZpdj5hd2E7aIyarst6pQQZkGIYnkl8JKKQ5/1XVRLzACuyTggRskhHHTuZr2T6kWp/BH+aN
	9yaLoWuo1Wj4E1UXjrTWwaugSMEqdiXTjKammpKwbZDdpagZKCLdyhFrv8Kr6jTEZc8bIE9hxqD
	hskXs9Vn0uLu5oWnEcui66d+Hm5C2dUlhRNrbZrNwbWNtThF1yfzzzBIVES4Qxfj3bMXJvYbUTx
	YropkpBI2/eI5mJ6TexJ9n+Jbhh0KQHubi7VhtWopkIz53Q8EL8aI5haYNW4Qyi4lTOpGdk0fU6
	hx
X-Received: by 2002:a05:620a:4448:b0:93e:c12c:43f9 with SMTP id af79cd13be357-9494bc91605mr1621095385a.70.1794835067711;
        Mon, 16 Nov 2026 05:17:47 -0800 (PST)
X-Received: by 2002:a05:620a:4448:b0:93e:c12c:43f9 with SMTP id af79cd13be357-9494bc91605mr1621088985a.70.1794835067193;
        Mon, 16 Nov 2026 05:17:47 -0800 (PST)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9494c8e1c94sm843927285a.39.2026.11.16.05.17.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 05:17:46 -0800 (PST)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 18:46:43 +0530
Subject: [PATCH v3 04/11] dt-bindings: display/msm: qcom,sm8650-dpu: Add
 Qualcomm Nord Soc
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-nord-drv-dt-v3-4-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
In-Reply-To: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794835013; l=969;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=3jZf2Pti83jqOcW2mSkjBOHEd4vR1NpTAkKkAceccnE=;
 b=JjgDh559AufDCmhLwnJspcdf6rZkZsuIPjkvbejQcaG64aoXPfcwej5CPmjCOrjOYXoKXwFkP
 LswwhwR6HLsDF60zELZb+9MpHsV5oGl+iM1+LaX96Y33/amGM4Ei+JS
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=VOVIDNPX c=1 sm=1 tr=0 ts=6afb027c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=lCWEfuFUYIIHy-HYLagA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX4NEK2rYIUSAr
 1yOJ+9tGOc6qK1eXPJgcW1au2rHSrICgQdcoBlG0e+9MK+dPYi4hyUyQ7qb97M2puzLnZ7DwVrE
 YP2NuYawKk6Z2sBv5nUpPpgJngq38r4=
X-Proofpoint-ORIG-GUID: 7xxap2AbgxocH67uU6fvTDDXTnGYwoOL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX3mFs4hrN+rfV
 IE/PKwwEaJEnNubn5VEGWKGRxcz7dycpVvFaxtEDGpgjdF6Pf1bcFRGjcr59rSs7VwmDLchyv8o
 wbhGjGhCHJp/FY1K3/GPaqOfoIf4nfg5wuBf8oY39PklxgWke/+obSi+K4Q07Q7Hp1Dh9XlOPMM
 EEStQEwu+V9iP3sZgK37+mFJKgKaQQFH18yvTB8DA7/nkvT4cXEB6HlZjwXLl/fc6Z+zqgV3qve
 0Pjz2zliFuBBwKF6j7COMhnfGm0cE0PWFyPtW7HQNDWsrxDcUlWFkfIi7XR3frP+RllwFIONJK9
 Zd/cUAnNKf/kcVuSyn6o6RRIK3gZ/ARd8tITjhpDrJS0M2cCrSTiHGarBTx3wr2VBEg9g/q7DXb
 mBYAG+cbuItUKSevcRZL6EpTJ4H7oIy7Y90XKPCSKZrP8dwv9Ovuw/l+gpDGIrRch0Bs8Y1FMN8
 QlNdyn8Ot4w1leHr26A==
X-Proofpoint-GUID: 7xxap2AbgxocH67uU6fvTDDXTnGYwoOL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_051749_461575_D5B12A55 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Add DPU (v12.1) for Qualcomm Nord SoC which has noticeable
differences against SM8750 (v12.0):
 - Added DSPP blocks
 - Added INTF6-INTF10 and removed INTF1,INTF2 and INF5
 - Added one more DP

Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index aa0cf0ec5b93..430fa02d18a7 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -19,6 +19,7 @@ properties:
           - qcom,glymur-dpu
           - qcom,kaanapali-dpu
           - qcom,milos-dpu
+          - qcom,nord-dpu
           - qcom,sa8775p-dpu
           - qcom,sm8650-dpu
           - qcom,sm8750-dpu

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

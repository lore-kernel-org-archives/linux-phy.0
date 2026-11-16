Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CDD0606A880
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lwGvPME0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=EPpDFUWO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=aWNMhO3c
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=GByd1dUTExA6t1EYH9XVtLWzv0zzL5yhQxmwVuwqX/o=; b=lwGvPME0sH6uKqKTQi5fZzffzJ
	Snfoicj6u+UBUw4BGbnFWrdV8U64zq1h6JuzRMsPQZtgRwhVxiotzS6brgcW3SPmOl0suJQzxznoX
	uUdaEritiEqHDUHmiXPc+X0W6BA5dxdRkPXAmza71qYq683gks8pz1LRXtyH1BqisOrR4+GlNTU3I
	cMwChKcswcULITYowQCbkeMJjVF/YtH8n+5YdBk0Mj9k0+j0YcBewkWw7GtYwAdU+w/PL5UfIxCkW
	fer5h6WSFsb9NVX8XRkQDtPPc5/t8AhDwWxrwGQyMM1Lc3laoxhu/kGoVm7pMBBxX2NnqaW++keo7
	VOl7GKOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwbQ-00000002aCp-3Flx;
	Mon, 16 Nov 2026 13:18:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwbO-00000002aCV-4BUK
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:18:32 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AGC12XO2472865
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:18:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t2gbUgDpflbrc/m4hWyeER2/DcJMobhjIE5yYWx4KBs=; b=EPpDFUWOkZ5L4D/K
	1BoTCAv07el9Qc7jt/26GUGF8ENgjQm4+R8ZyEaaSr/8vYF8ZDeaOicnrIYrZijA
	mZxTD3sfs/yujgTaHQQuIdEViZg+c3h7lCJqSFOeYe24TNs75A+Ag8Vzf6PeyReI
	1TS7u2A9ovivRK+q01qw6aTF9/zU48VVUF+K6H0sLqidRhRCoSe6aEpNY1Yo26ed
	oBmaBXmmSrwNB+vDlUpJb1Me9Ch7vzcaAbxhNtMOcBWfhm8q9xJB/sfVhGae62XK
	hp7v75ikoc5Udb5UQWxNXyVp05vfEibNk+euURuqhvI2f/nvrcZn9IX28SvW7lLI
	UOYqxg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhhdxhrf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:18:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-94967c6d4f4so170947985a.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 05:18:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794835110; x=1795439910; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=t2gbUgDpflbrc/m4hWyeER2/DcJMobhjIE5yYWx4KBs=;
        b=aWNMhO3c4t1IcglU4iDBKXiNRAbaxv/yPdNKs0pN6C8AvOibp0e+O3Af9/4R5wIjCa
         xn60h4yZ0AOsOPeyzgHNZelPENscV+ia/z1Bl3mpilTyxwFWIs+EV4ixdZiu+yY9Pf3/
         SKanJ130TrJvbiNbq9JiNoSc12iA+t5GAJ/FKw1Q0co0ekYj98VxumJQ4R/JkMFGubL/
         l3s6VsZ4Nom8eXU1J3mPWBla7Nzwq5T63b6mbLbI32n9kfn8Cx10Kjl4MBFrFxE2UB0I
         CJL+t2bytdgfx0NuEqdO4P15KvH+ldoH4hUm9CNUWM0Ozids7W3sLdyQ28xFBfekhLOd
         7D/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794835110; x=1795439910;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t2gbUgDpflbrc/m4hWyeER2/DcJMobhjIE5yYWx4KBs=;
        b=EXBTrFySKNqsiv8NjNOjoVNuvBNE1b1nwNxrkr2q/mFNjgp9VW9GdtXQ1W2pp44zBu
         hLdYFFHKhfAh1e8kWzzXbx4HtMWzXOZqG8t+AnkTe9QrD9Fpzga/VZQ7c9eBJvgEQB9y
         rcjHx1fLbGKmlL/w0tBbAEnh9ymH9Gf8a3+gNHuhL1G8nL2eGKEfRlrFTnjBtaW27D0Z
         V7CqNaENkPQyzIYtxEDhgRr/w/eSkkQTFEzLQXnKkKdMPJTD4vLd6wLd9sCRvyFho6mD
         UGrC+zdpcjb4/reU+8w7jvfT/Y2WyLhpUgimJSpy9UCJsJpXfs4X/4xRTWEt/Dx2vfvq
         th1A==
X-Forwarded-Encrypted: i=1; AL+hErGmW/XnZep+e13wqBankWE2aKWnAUvEYMrq1RTppNPkAHQIt98rt7MjJjeyAJ6Kd7Qj2otgbVcFwSo=@lists.infradead.org
X-Gm-Message-State: APuU4Z9+R1lF1oKv5yQqCsIbd36hiqJP6shUNG97OhyEMAjcG+f+eYOs
	YxL0LEI1bulFDBt+XxKn2vhkK7AxZfHpuALfSI2Zmq/t/IhhAgDmLPLk5/AHcz2RA6FQswFPeK3
	UhN3Cz2Au0rFL/6HrSMUuR0D3qTDIQhmZcM2AqLlGdBidYaTJGJ1FYe3SEtwB9ZTavDbN
X-Gm-Gg: AYBFou1ufxU8p+CXGjaJSfgI6LymQAbFu7TBcum2SoevDJh1T882Tt2XNlJqsKUFk1F
	30kMQhLSZe91YQ3N5AQKpybxwrBrE/MP5bs+3USs3fzLr5a5kKV1Hlf1Ypah6YqTHv3FskZaEAb
	/76wP24aMQHUi7FYLgQ2Olxfx/+OQHnhlKr4Ul9/nbz/UYtbHyNm3kcHkqfCNC6mxuGiw7Y+VIW
	CVPF23gtD11pb9wFW8IDuuXJFGkl4oPge9vCg/FvWP9iCyDYfm6hILD/+R8s1F2KEKYh/7uLggk
	Sha9vJxenu4QYBfmYRfgO0CCK18XRJrlTeFRWoYzP9BqN7V22xx8s6/fjoK/XmtBqXm+wclNJJ0
	04qhdqCKWf7gk3qELoWonh80YplkSqSh7zYf6+CiLVeVg2YjxkbfpXvXHHp7c8JvagiI/aj2LRa
	lb
X-Received: by 2002:a05:620a:688b:b0:93a:2221:5460 with SMTP id af79cd13be357-9494bbe7d6bmr1466808085a.40.1794835109449;
        Mon, 16 Nov 2026 05:18:29 -0800 (PST)
X-Received: by 2002:a05:620a:688b:b0:93a:2221:5460 with SMTP id af79cd13be357-9494bbe7d6bmr1466801585a.40.1794835108814;
        Mon, 16 Nov 2026 05:18:28 -0800 (PST)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9494c8e1c94sm843927285a.39.2026.11.16.05.18.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 05:18:28 -0800 (PST)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 18:46:47 +0530
Subject: [PATCH v3 08/11] drm/msm/dp: Add support for DP controllers on
 Nord
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-nord-drv-dt-v3-8-e3d3bf0e2c49@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794835013; l=1225;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=XJxZ9JOwZTbboBKfrzjZDalKlNgV2kQ+8L218FILiig=;
 b=O6r8EyI2nMi9A+cCkAFWcnDMztGvOvMYd/RUd8W9f3dPKb4b957WRmfYDKWVO5OVbAESJTXGR
 faA/HpH0XxiBiH4DIZOdzsKAL8xx3dgfsxJjei+Z8ud1SGYMQYl8RGO
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=VOVIDNPX c=1 sm=1 tr=0 ts=6afb02a6 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=tTS4mT6h1kkz99yYBxkA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfXw0JHg1h0eOEM
 Dyytwong//HoYuZN9Y1h2mMDB8Z1wf4MfMLhO3scsRwE463+U58OU7TzPwFcPr6q+Onmbo9T7f3
 QhDTNEo3lwe/LLW5/PtfA4sPtJdlT/M=
X-Proofpoint-ORIG-GUID: xgQMRLuswRJ0PjXEejaKjJdfzQ0h66GZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX39+4T2LSk8Kp
 4TaZMfkj6QOIs0zaW2yDZK9ZVKmkIgjReEEx9Ny8fbn/JKSkmvBRr4RwOiQps5uPUdvl2lWBhgz
 KYaclomCm+kyjwlEdYbYUkP/3XYC/djAQWD/Wh/fAD3bVmuoPA0q59Y1bgEJQhIQlTmLTUlmj8F
 h+7AFpaoV+YELe1ACvjsrspPk1dSu5Hw7lMbkkeqUJCLFOoyzo4RxTa533ei6GGLjf/kjz4sIP+
 SJsvDr5oiPPNqMVUpFX7hIbT0ivq7yF1a38oC2IpSV7Uff3FnDDoDykws5RaJ6MfSgfnCqWU4mj
 9j7GmeQkLKSQlaIeNv2SybN8RHtnpaHfG4SBTW22Ph1c+r5KzubsjWRAva9G0QuVBI1GZ0oU9t0
 MIKbJd99pYRU1s6cZuupNP4csCRVpCoOjrg1A8hME64v9MuZRbkxa1X0LDNOwC/VDg539GjGhhE
 +1RasjkyhOgSq0+rPHg==
X-Proofpoint-GUID: xgQMRLuswRJ0PjXEejaKjJdfzQ0h66GZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 malwarescore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_051831_048245_6FEED155 
X-CRM114-Status: GOOD (  13.48  )
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

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Nord has two MDSS instances, each with two DP controllers. The IO
start addresses for the first MDSS instance's DP controllers are
already covered by the existing SA8775P descriptor table. Add the
IO start addresses for the second MDSS instance's DP controller.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/dp/dp_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/msm/dp/dp_display.c b/drivers/gpu/drm/msm/dp/dp_display.c
index bc646d172abe..8b1b01af11cf 100644
--- a/drivers/gpu/drm/msm/dp/dp_display.c
+++ b/drivers/gpu/drm/msm/dp/dp_display.c
@@ -108,6 +108,8 @@ static const struct msm_dp_desc msm_dp_desc_sa8775p[] = {
 	{ .io_start = 0x0af5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
 	{ .io_start = 0x22154000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
 	{ .io_start = 0x2215c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
+	{ .io_start = 0x08d54000, .id = MSM_DP_CONTROLLER_0, .wide_bus_supported = true },
+	{ .io_start = 0x08d5c000, .id = MSM_DP_CONTROLLER_1, .wide_bus_supported = true },
 	{}
 };
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

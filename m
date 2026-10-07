Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C4AECA5FFF
	for <linux-phy@archiver.kernel.org>; Wed,  7 Oct 2026 06:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8qTewcjnVNJrtM+l7utkyDP/WGa1LN2KUicrGVEklQ=; b=Fz6G17M+JS0dus
	hemlfH/S+72TlnlpwfJud4dxdyumnZefPNZ8vcWRJMbCcGQKphhcQRiaD+EugmZbdBMuquHgr5x2Z
	+8mY7uSZT7tTHurComwvGnWDHRUM27ed9F1zuz2TCxLhynk5t8hyiDwHckMK4ixe5olnsSfDPol8O
	82/+MsCJzliYJGzeKMkvrSr/hIpexfitjpf1hRwGrCRmBt0mrFkxqJs1s4rThRylcE35VIsrPvsyG
	k6//h1LnhPE0VgY8RkK84BPSFYNTzr/w53uSaDcsvi/Ocw2D15LDfhPyEESKfSvoI+qaE0kJsD5cf
	8xlUK4AMosK4FRBnuL2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELAf-00000001mRw-3tqJ;
	Wed, 07 Oct 2026 06:30:33 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xELAZ-00000001mR1-3un8
	for linux-phy@lists.infradead.org;
	Wed, 07 Oct 2026 06:30:29 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6974U1gE3923506
	for <linux-phy@lists.infradead.org>; Wed, 7 Oct 2026 06:30:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=; b=pmkvjIu5pTBucmBx
	ZIW+KsjFyYfSfxpsR0enCF/4gAZ6g38FIiKEOHbwAPV7n2q3TeopIgpRIRX/Ibe+
	ks2mqnh+BDvMVoRMvb7ta6YNjSvOC5AmHB3eN/JHoieqILq7/A9dyvSfclTXaKma
	yd33B1dZPVNVPJM+xJ9QZe/3auqOU1vjvbWJqH1OoulH3vcEMkhfILdNqbP/iCah
	DMp0Zcy6NaKSyaHXYxmAp3g6q+UZ0ESnpMseDEoeGJXFCnORFf3izmD0b7p/2VlJ
	jjSOxc37ZqrKRNDr2MlVkGT4mRks6uPW0A6nvtr9W5I4yoYZH3BnzQ3IyesbJO6s
	+i6slg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5c718v4t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 06:30:27 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-38ecc48b3c2so6758108a91.1
        for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 23:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791354627; x=1791959427; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=;
        b=PBck6lDCD2IgbILEuvOXIeSgpnHc9DvgDTjbjaayO8rF1Kg12xKSy5BAidC6PGeaJk
         i3RwMPjkk/UsSGbENQ3ozRDfT0aOM6/diO628lI2UNy05n52/EdWQppSS806vCR1PmqH
         RJdrmUsHeDN2EQrbD6YSqGTaJGIajiagIg8NvdMQ+07ti3arUuU/Slk73S6Owckgbclc
         v+QqSvA7SUhR2m1t+X+uEcggXbGbhzrUz0n6Gu+t6V7CfVXxm3udWb/tg7zFRNIPY2UD
         Pb4ZNwtPufSWkrf/s9grM/tMtAE0obuTa12RhH46dwAqxgIHeIf6qgsGniGPv6Bo5Zmk
         u9MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791354627; x=1791959427;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IE7TTEPp+mYjYOJnw2S5JdN9e/VGEB2SwjVCAm8BKAQ=;
        b=kVYuP5T5vlBCVZZo+Vc4ldZmGipx8RU745Ki8XdnOyLv3Mmn3ihnIHcNBDyHOEAxq2
         MDYvsU6Csq/hC8Y6DadLlNNzOa+vhSoAc/GM3DeGUJMiXloRD4Q0prumRJ3YuUFRcNzI
         UT4zUGXwLthCCYWLwhS0Y2To98g8OB+Dmq1UFCvyQB0TsEZEOX1+lEiWmQPuHLHciEa+
         TQh2NOt7kD7L0bhB3MGSS4g4deMcSuZmRpg9mT8wL2E6BIGgfVME81XLS9OVCmjoedI2
         Nz/M0l09ed5Y/KLofxo2Yau68z3ddeA7OlkgMz+mWuCaEwf2TwDIU8yZ4OU1+fuX/ls5
         QjOQ==
X-Forwarded-Encrypted: i=1; AKwUvBwRysvn4s8wXx/yvS6mPoeYj8TuEkXWnCycel2B1umfppLoy5oOdq2HzHlBxk6LX/0bglj3UgPbMPw=@lists.infradead.org
X-Gm-Message-State: AFq9FYL5v302wEQMbkx4ZB6oI8JClt/5CJXAg76RYw4f9tPTw7d/HtLX
	LzrwPlIZde9f3UtWPBI5B703PyPZwLMT2mIj8jWZC99NvqinMrEZtwFv2Cv7ecyEqCItxvElFtn
	ZIczWnq4QRedQ4QVO9Zpp0Lg30hP2Nl5C8cmvHCGLoKfdTIVVUPTg/G9rZzYaG8ZXVryu
X-Gm-Gg: AYBFou12wxrHs9/vsBlGT09yX0kRnU29D7yahXkCDC5r0H8ZfYCOqdcP+L/O+Wqvg/q
	zOYvBrgvZzC5LaYuShnL5VymUbhOzMqv9hCyrngcaGW9vZlQ//fKsHU4x73NAQi9aXp0OlYtNN/
	NxzvUxpJ0yCWy7X6FTqW2pSGAZqxQEOnq4zNrhH4eHy8vtqA4gVfuZLDtvaSfQfSEWamx0v0zA+
	vJ5HhRWm1WuRpjt54uKowhDtepCyOo2Cj8DNLSKSoBENSRpkYzGFnRgGzx5Pk+N4zGrVOPRy8Q7
	D7ZncuGHRX8ZHcR9pTPHldYdvbkFm2lzvE9NjZ8s5eKSKhuE9KODwI5qi9NZtjwWhLHGYfUjfHK
	I3+pIb1V6l0yVYBbGX9HobnBWEQ==
X-Received: by 2002:a17:90b:3d90:b0:3a0:8050:2ed1 with SMTP id 98e67ed59e1d1-3a8a14f00f2mr1079266a91.63.1791354626843;
        Tue, 06 Oct 2026 23:30:26 -0700 (PDT)
X-Received: by 2002:a17:90b:3d90:b0:3a0:8050:2ed1 with SMTP id 98e67ed59e1d1-3a8a14f00f2mr1079250a91.63.1791354626269;
        Tue, 06 Oct 2026 23:30:26 -0700 (PDT)
Received: from [10.213.101.15] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a89ab81bb0sm2972690a91.5.2026.10.06.23.30.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2026 23:30:25 -0700 (PDT)
From: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Date: Wed, 07 Oct 2026 11:59:37 +0530
Subject: [PATCH v3 4/5] arm64: dts: qcom: glymur-qcb: Enable UFS
MIME-Version: 1.0
Message-Id: <20261007-glymur_ufs_qcb_enablement-v3-4-84cf4f861415@oss.qualcomm.com>
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
        Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1791354585; l=1034;
 i=pradeep.pragallapati@oss.qualcomm.com; s=20260911;
 h=from:subject:message-id; bh=qZOq97SsVPti3oQZnFWkZh3c728gDdolT+V4/jasJQk=;
 b=kVxyYawAfd/MZUrRf/KK1FO5NfQZ3kO/Y5bJ/87gcwx4qFu1mHbh9wGu2di32gobLhkPD/kuE
 D6E9PjTCgNTBVUDYVPte9vN/OVuX7rLYaDXZORiDR+T81LeUpfB8WCd
X-Developer-Key: i=pradeep.pragallapati@oss.qualcomm.com; a=ed25519;
 pk=uyRUsge8nQMwf3iW/e/o0U8z9nWLCMm1MGKxEftztic=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX1ShkX8dFEtW5
 tbd125HpToN7neUZCzg4fj4wCC1pIf6BSPsZmayhXLKnwKgyHl3TSxcDdUzdY57Ojf5G+LZ1tTY
 BoJP+7NNBTaPZwMR21bLclpa9NfUX3c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA3MDAyNSBTYWx0ZWRfX3kn718pwdh8G
 YrHforYydfGr1jni5cqx9boJ0gv+Rw96gVZOxWM8lVYCflpD0YVzwl1oeqcKxfgkh96VoJ2yj3m
 7/ty2C8MpGAezFkW/1TqKuTkTxenNQdeEKkszHzgGR40Ptd/MRTQ9YxDknnYPg/uU2T0U9tKPxH
 iA6iwEftWiozdlhQxnAnyCcT375m2H2eiSY90zmZ6rNcIYHJHK5cEGrC5ZwoyrTe5cbK8VeBGIW
 wY4dddReQgBtdCXWc8ooAngYaLswQ9qg7WAr90d32tBUlf72c/RHLUlyGuthjigjzX57utBTGW1
 r+KR+VYbA5i4y6zJoG9gLXtQbQXPn5YBf/TRUtVbowOVvc+S/571ZnV3UFkLWIVSHQW67z5GuB6
 Uk+0lQYM6R3Por77QrGwrB4z5w1+L2SjtK/gQwXUejkevOa1Wj3c1LkjxRV/uLPxYqlUiVvcxdw
 qIS0X1atIk0JLl7Q47A==
X-Proofpoint-GUID: Y5uH64JlP82YbFcwTByX-PsyjUGufDdP
X-Proofpoint-ORIG-GUID: Y5uH64JlP82YbFcwTByX-PsyjUGufDdP
X-Authority-Analysis: v=2.4 cv=LvYHWXdc c=1 sm=1 tr=0 ts=6ac5e703 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=cMKPt8sKVRzp0kMMbBYA:9 a=QEXdDO2ut3YA:10
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
X-CRM114-CacheID: sfid-20261006_233028_026116_79C28897 
X-CRM114-Status: GOOD (  10.66  )
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

Enable UFS for glymur-qcb board.

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-qcb.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-qcb.dts b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
index 17d8ff3aed23..f17181bfeadb 100644
--- a/arch/arm64/boot/dts/qcom/glymur-qcb.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-qcb.dts
@@ -697,3 +697,21 @@ bluetooth {
 		vddrfa1p8-supply = <&vreg_pmu_rfa_1p8>;
 	};
 };
+
+&ufs_mem_hc {
+	reset-gpios = <&tlmm 250 GPIO_ACTIVE_LOW>;
+
+	vcc-supply = <&vreg_l17b_e0_2p4>;
+	vcc-max-microamp = <1200000>;
+	vccq-supply = <&vreg_l12b_e0_1p14>;
+	vccq-max-microamp = <1200000>;
+
+	status = "okay";
+};
+
+&ufs_mem_phy {
+	vdda-phy-supply = <&vreg_l1c_e1_0p82>;
+	vdda-pll-supply = <&vreg_l4f_e1_1p08>;
+
+	status = "okay";
+};

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

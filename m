Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7346606A88E
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 05:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Br7l/bTm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=btfDw3JW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=GjO/WAXO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=rJKnkgwO/ZDGUluRD02Gh2AnwR115NulWFXhF4Pa548=; b=Br7l/bTmnxt5x2SJcP63+YmmLU
	vPFKaPzwOiFlPGh3UqOXwHLIET+tdITdaD+P5QesUJMUi4mB2cNAYdT2jC4p1JSmvUNSU8y2H6GJa
	kYb8lC2oi0S43CzdPgEBGKX+6rRQ6UYdiyd2e5cdP9PkyHxwPqlT6bWUybqAN4Cr0sKQE6RahXUB/
	4wyh7R8NST5iPHkY6NZnkUzrrVl5eTrdk8q03GI709W8gSMtRy9jgUz1C7U9kSmFtPC3Q3u6EBPqa
	c7KjyxpRO5/2go7SEQEMjQqzyweBPnrpE2VEqWExZW8XWXiwOUecdQfQSBtgHuoP4MlQP4qnfGgnd
	8PZxBJnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvR-0000000BhNR-1gUP;
	Fri, 13 Nov 2026 05:34:13 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRjvN-0000000BhLd-1Bn0
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 05:34:12 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD57ZfQ980018
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pvvqtH+Tie2c9fqwzK3zcf+slXCVv07dB1ilEfbuVpU=; b=btfDw3JW2Ox7IA8Z
	si602r26ZUVvjQPYIU1tKK1w343yNFumbcLZQs++bascEp/ldrfT9/RIV+KQppnZ
	54wGzfq2Lr7xwUMXYMow0toYZdEa4QSUZZcdl8pMXxI7BfgqgfUeG0rjYvF0IQ+l
	RoHZUx5G57q1wGTuggyIchGUw2Vopg4RZ4kD7Xgo7Yb425JamLduxq2W+jjzy7Sh
	xp0UC7xMC/W1qYwIJxZYNSjfMvFge4BRGxW+j0SuLdCbI+f2MPHjPqxoyuFI7CGf
	VLE8EyBlUkX2eaPwrkHf0A1Y9odyGs20yz7B2xEv3C2CrM1Z8/HBIqM5OdyuQZ9f
	/H6/ng==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwc1j3h5w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 05:34:08 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-4a8eeb3386bso882061fac.0
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 21:34:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794548047; x=1795152847; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pvvqtH+Tie2c9fqwzK3zcf+slXCVv07dB1ilEfbuVpU=;
        b=GjO/WAXOx1Od0/BBSZSNKg+g9G7Mb2AMLs/JiggtPdag8HD5BXCe+wx5AtC9b9Fhez
         xWDWNgg7OmS7GDm2jXREsVKV6BW/b80wsWF5sdqyhemqMQ89N6/WLbiTejW6TC6pTzoT
         +Oc9pOQPShr8BjD1qpXSwY6qgEIiY0wG+sYe0Stz8aRwzD2UK7UEcynKMbIJ62hMPrnz
         Vd0EF9tPzaMrFKtpAmTMTmdqYZUOV/TE1U09s6EI9ODdh4x3ns16xIic1Wo3kI/Cc4aC
         gBzUolHhr+rVnoAVlvbJyxcKoeWmxIjghR1URM1ayQSxnko1ZQsbG9l19s1DJOSJmhHH
         k+sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794548047; x=1795152847;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=pvvqtH+Tie2c9fqwzK3zcf+slXCVv07dB1ilEfbuVpU=;
        b=pWwIKO9gQKBlJiAJY/lmdJxBRw3OGzBf6cQdUMs1HgoOUeIGYw+SywINzGfn0QFsTR
         vYHZtIJoeDfRIAhaW4ou26Qtkc8KglsrCaWWpOabKRp7CcYBL56zr4zTJBh3BiFw4Igr
         d+Z97U7aKN6SO7HJnxmEfTBXfk7A3JylZEFJzcy04H9hyWz4gN/BwZAHTUfOumKeNFDz
         u7tPgJhB3cfqaqWEJKn2YJ/GUZ542ATS0NZKujkf78JGPA15C+91nJj5sYnv9VAkOnYL
         uNH8N9zfESS7FHRWJYWU8TZe953zAC3MViWATMpcWqsIn0wtfV2rO6SXv9yNlKX4my+B
         vlzA==
X-Gm-Message-State: APuU4Z/dA0MOL+DNKogCH89Hhcl4MfHnHU5nqq3GFkZFrJ2Z9rGQoeVg
	BBf6iZ/iI2Ibkt+mbDPZBb6OHvQzbZtmJ6vfJEztJ5C6K92arI/jTxGZAvwOkLuL8W8aSJoihC5
	g2Jag8ZyhRYKx/YmQKPBBAJ/0IAD5D1ru2k0e4QbjPiWyaF5kJPXyPMQDuPlwTAgHdpZLI8kZqQ
	TspBg=
X-Gm-Gg: AYBFou01keyZunxHqlWjCxhUJwAgLpc529BW0zt5dVDlBnVAFZGVWyDjGDf7dPsg50Z
	MqBAlNx6f05cs3Gbzi2fB52vr0DnNbVJ76Vn4J9SVk7xdmmX7Oggf4Nu+r713wq4M5PuahJm16q
	QSQdgPX44BeZyzJCa1NU8V5qKGr+jbtiFeffgxMtdPyQdx/3N33RBRZQUancyrl9yck00kO5fLg
	2Nu5acncnruUhKHjPivkFUzppZ7lWcKPsI79QiegsH2jW+K/H5bEGLShe8vJS2w+OdZfkoXf9bN
	L3WTlfRgCFFbbrxDAgxbuhUB+rIDlsGZzq0DbGM6Ct8JwRdc1PQU6Kz+TkEG2Wtku1Ss/mWG8Ly
	HelSLJ763dU3NAmkVK1lAzbZf5KGAtMXLix9R3pLGfp94i//TClwUPJDJuZZ9n28NjlJI24dJeW
	favjSDL1xNEz377Gkw0jzVWn18ETYM0IHO3XgcRJgStP7jVHeyQsT7sLaFcwMg
X-Received: by 2002:a05:6870:88a1:b0:457:f4e1:a1e3 with SMTP id 586e51a60fabf-4ae63f788b7mr2812629fac.7.1794548047512;
        Thu, 12 Nov 2026 21:34:07 -0800 (PST)
X-Received: by 2002:a05:6870:88a1:b0:457:f4e1:a1e3 with SMTP id 586e51a60fabf-4ae63f788b7mr2812615fac.7.1794548047101;
        Thu, 12 Nov 2026 21:34:07 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4afe22576bfsm803252fac.7.2026.11.12.21.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Nov 2026 21:34:06 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 21:33:39 -0800
Subject: [PATCH v25 07/15] media: qcom: camss: Add PM clock definitions for
 Kaanapali
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261112-kaanapali-camss-v25-7-1d709f57f370@oss.qualcomm.com>
References: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
In-Reply-To: <20261112-kaanapali-camss-v25-0-1d709f57f370@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfX2tMYB5Iv/LZM
 RRGYZ20LW2Cf7vHsCHJwipnli8mkLHikLlZEtiQA368iLL8yo5uLFuY1nWfrXKL80M1kdPHCrh1
 qQ7MCtgloKpdH89UNFpLP1ptfvj3iGs=
X-Proofpoint-ORIG-GUID: Dq0_4sasCYGcHD6YUU6H9HWvmtTmGULz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDAyMSBTYWx0ZWRfXwWrTz5U9uSPj
 UA8EWBHE0CkaGKPk/J+A6iq1tYQnbcUd31sCkEDBnCuJaK+2QX5Dm2JEEQpj80UEie0Eg5n+9cF
 T5xlQIm8UbzwmejB+FhZWatTmBASbgi1WdEmtVqxzX4FAy8/H07VC5MynKljQVQtPkwOShXqw+k
 XiVVQc+aFohhRPPv7P2FGxGdypFKna2xXpQtrxpHZ15oGpSyXwwbOkz//h31C9CHJV6Db5e3esP
 y/41uUKYIj8Tll2HHsX1P/zGSqxUjF9lLchXMKPOwBd/BsjDDUBthcMrgYe9S9fB60PsRb0cStz
 lvY6QU/Vnk2nwOGiAh9bY6sA8J8xcQcGT/iBfoz72xWHisJd6soWSMQgBwsA5goE/VBjXOvSUFo
 pgBL8GHH8FdJ2FEYcEXl/BUCNM+1w79tQkfOkzQlWRFKL5HfDkJaj0pcG8C4DfhZAqXhWexi97E
 lunvIsDcoSTKwbT4sdw==
X-Proofpoint-GUID: Dq0_4sasCYGcHD6YUU6H9HWvmtTmGULz
X-Authority-Analysis: v=2.4 cv=Vqe2kO2n c=1 sm=1 tr=0 ts=6af6a150 cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=3_5DbsQPI53TjtTAKikA:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_02,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_213409_453800_DB00A866 
X-CRM114-Status: GOOD (  11.53  )
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

The CPAS AHB and AXI clocks are shared by every Kaanapali TFE and IFE
sub-block. Register them as PM clocks so the PM clock framework enables
them once when CAMSS resumes, instead of each sub-block listing them and
taking its own reference.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index cd6adf749c6f..f7b9c71cf263 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5602,6 +5602,7 @@ static void camss_remove(struct platform_device *pdev)
 static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
+	.pm_clks = { "cpas_fast_ahb", "cpas_ahb", "gcc_axi_hf" },
 	.icc_res = icc_res_kaanapali,
 	.tpg_res = tpg_res_8775p,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

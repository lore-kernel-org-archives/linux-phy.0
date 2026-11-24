Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7966606A69D
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=gPqvYbGd;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=IC4IN98a;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=MDO9SFXE
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9YsHwwAi3W8Te8pTmBtPVoXdW6rvs6EEN7LsiR7DAXk=; b=gPqvYbGdskoPQbSzJJIXhTlLQd
	vAQ/7N9FZrk3FfC4yuKJCnHiIQUZf3eSjG54mXAK/qD8HiT01vSmJuW4JTe1+hHThj4uwADweJjDR
	MyfcXR+8jLBxHuOVGSTukW31LncXvdiEHJP9oaAIP7jdBV1pQ009bQ1RWo/5gQd8e87t94zkHI4ik
	BYFM6DgRV3r66sq6XqV/pqmDq/IAYpRla8OIhIQuFFTMnP/Z/Gb50Zbry/gAmRR6VxuZDWWqsxteB
	1VTA6JWJdkXgQ4fpU4Ltv3kGMVRY9BoOouxU20auAreOpCgMGi62li0B8FQ6Lfrj5POypd1dObpB9
	gdNw7sNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiY-00000007h8c-1kih;
	Tue, 24 Nov 2026 20:02:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiW-00000007h7m-11OS
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:02:17 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOIXHT8119508
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jWrCu9bn8Qpw4f5V5CADvLlfy8TRqVXlmaSz9se7qXc=; b=IC4IN98aD3qMMEOt
	0/ZBAR6kZlsNSyoJV2ql5TRgq5Aithhlw3NiXK80diUP4tatEE8W/L0FHZNqbzeW
	cvddkNTUUUx4H9QZ/ZYL7Xjnh/XxQoWYHs+q8UN+cK9a85cOGpt99ISk5ylzfgao
	MNEtC6y2kHRUu8Nfkj4yt2f/MzpQaPBHlX/e0kvKkdeIfYWGqOp77WO0WyLXv3X8
	05v3ELy4Rzcs40UYYP4oFubxOtgYGOdhzvamXDcn9I+jp/HNFXecoMDOoU4/xSJ6
	9C4oimlwryuUy6Ixw0QVRMVxXxa2zMUvV+ZK6N4VRmVH6FU/sPXSd4ZIcZMVf8YQ
	3ZhiAw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5effrv60-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:15 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-36a6f57c066so502325eec.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550534; x=1796155334; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jWrCu9bn8Qpw4f5V5CADvLlfy8TRqVXlmaSz9se7qXc=;
        b=MDO9SFXE8P6sBlmNi47pfoZyy2c4mEBT9AH+FMB/dOe54XY2Ee4D+tTEW5aiXPlnvi
         Ssm/WYqiezVJ/y6eEQahGvnDgooAyo1pLiyrV1zJSJymIfwpJEUvDe6xogvdz0xw9q2c
         I30neGWfPrbSmRX3W8UN58oNjiMo3nPoE1m95XozF5yM7YoaGhMx/VpSb8GF1eLLRnVb
         cYQqcwXG6YRK7SGk4qX+nPrXcNEJ1oLKPnHuETmazyK/lh424leNAomrY4DOPn1saSbm
         acR3Y9ubdL8SEIvXAbxIPR6RTz90JUBjU69InjwKy7L5PcqK1N6x3Dn3/2UoMXlxe7zt
         Ix9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550534; x=1796155334;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jWrCu9bn8Qpw4f5V5CADvLlfy8TRqVXlmaSz9se7qXc=;
        b=p+3yZTNSeidqthXJ2vPN7uFUItJjRk2w8EZXZO8IieAZtB0SO6MGl/flmUHqA7jh8O
         6eeH14PKb3nubd+PXW/aPaFicJ0Iv2uxKMjeQYjIu3g+CHfFVSnc/UQXF6S/s75OVIeZ
         Ax2hpJ5/EDum82vufSEcHlyEAXeKf4JA0SbWiEyQDNgWJOV0c9r0trkieW0fgil5q5SG
         0tVcY1QGeLMDTKU+T++2Wv4coz35UQCIZfMCa7p+9Lb7hzwevc3zw4ynPQzw7GRkwQ0A
         dxoYfo2N9LjPBWJAzucsnEYHzKj0vLFCBtgXeyFqFebGLuu24GGGAiol0BID44ClprbG
         cBhA==
X-Forwarded-Encrypted: i=1; AL+hErHhfPOxZ/WzQCgsOYbjTKAdiwrYctJ8rr2VlFtxsD3bOU0GM5hve30Q/0x1dYGpZA5m8ggTwqfq3Xw=@lists.infradead.org
X-Gm-Message-State: APuU4Z8fiNlgcb16ERNS3b489rjUekPSv2gX7+nNOvi/ufrQ3fizkcXq
	GGwIJL/uuLPUQ2B/lwL2qPy1NkkJY4bMa/p8WnayFMGydalev5bcN54CXknnp9NPM4hzopz3GpV
	E2hLcOqdij9aavCRiD4vlv2SikE0QygWArrij033n5Hjwx5dvQzEjGV1RTSWqWRuovKdz
X-Gm-Gg: AZFdTZdJjie60VhF6MVZoEZD4X5pmVxG6HWoYHHF72O3DG0waXWvcCyBxe1E/CvmWxt
	YnHYL9E7g+GQ7QbuN0qD5ZHXY/6t9+ryyXomgl4YHN784dkc2MY/JVd6xdN0Fu7OjydLwWvW1Gr
	YXdjQxwTAtCiyErjM9RZokfF92FgxleMI14pJ+jg96BPrK8bDfwEdrEcCuXQAjzxso42g0u8i9j
	0l21xVuSuRi+ioXnMqG8dIYm4Ae4SJ969GPoBdI6GDsc88k/ow3SYijLi5zB3y/6AFO5ZZa/39a
	3jU7Oinmqj0Bc2SZIvrT4WGfO1jnE3Wy6HMcMGjpAa3pKgkYHoyPRMTKrPZbKa1MeY/AewRFL9V
	unrU6wKx7HiVf7nLwXfbHqFlIi4SGAQ4vuyy5R3EY2LEjNs8J9ZF3wWJwpNWUKPMs+3CDYXRjBy
	V+ZOCuj64=
X-Received: by 2002:a05:701b:4554:10b0:1b5:4596:8371 with SMTP id a92af1059eb24-1b5566e72c7mr23181165c88.0.1795550534068;
        Tue, 24 Nov 2026 12:02:14 -0800 (PST)
X-Received: by 2002:a05:701b:4554:10b0:1b5:4596:8371 with SMTP id a92af1059eb24-1b5566e72c7mr23181120c88.0.1795550533379;
        Tue, 24 Nov 2026 12:02:13 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.02.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:02:12 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:40 +0100
Subject: [PATCH RFC DNM 11/15] thunderbolt: Raise TB_TIMEOUT to 500 ms
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-11-a9b45c69cd38@oss.qualcomm.com>
References: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
In-Reply-To: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Andreas Noever <andreas.noever@gmail.com>,
        Mika Westerberg <westeri@kernel.org>,
        Yehezkel Bernat <YehezkelShB@gmail.com>,
        Mario Limonciello <mario.limonciello@amd.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=771;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=QbBiyvqAcfQWLt33cWM1d6MRIS/efAtBYRH5kpUuajs=;
 b=ceEoSnWOSQpTKTmrasnJ/E5U6w+u/Bzq7S/DCRvL5JzUoYBrFt5Cr/GlkYw1Cau+1LS5gz3BQ
 g5SlBy2yDnSCde294+DUgMW50aPABreI95lPJgrBaNZOLzRqhodnx8M
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Authority-Analysis: v=2.4 cv=eo5KXYpX c=1 sm=1 tr=0 ts=6b05ed47 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=S55nwNfuHOdlGrVOgPkA:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX+kb0YgL84CRT
 jXNgEV0aVTE8Z35avQWHA4TLSBrLy9I8DLt8q4iZZmcTJuqiJn7vDjaQADaIf+8PjJVTuVzxExp
 uZ6qfg5syyydA89iBfGF/0ZcWg/aU5r6nBmBneH+6T0vhlA1n1d2LYwnOPVSTAnx8tNH02VOy1/
 HeK3t4Vmn8uIDWu3KTKze7zaUP5T97euZZnp5B6qAKlYn9kbDX7VYFJNKHUl/Qb/jmvIHMZ7BAX
 DHO/Jq7r1L8JxDGdu6h2J7KyctA6YN3uTBkwvK3E4BvEhF7DzctsvjmHmTFmptgU0YPJ2PMZP3D
 sdY1boMAjB++Gs2ngQ5VZJUvOmzrrneFCbesYQ9+IWvrnVTWFHEkgYIhHNtMdtXA2qcMAOnlk3r
 hkoOLQCZIhl/PSgIlfGOxcr8kVcaERk2boXtYozcWxRdvFVtyLPCc8FYz1Fzzki722G5ZxnkeNM
 C66T0zFY3rSUjwF78Gw==
X-Proofpoint-GUID: Qoe1-hZwkkcD3FHMkfe9qucv1Wr1oFzV
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfXy6igsNOnK6S/
 FwTex9O/hdQKqB8ar+pRhXYpiwdtJC+0rG4AmiDk1LqTahiEjw+ChiuSMUoaOh4YtqK85N4IutY
 HuyU2oZreb/sjtXdRQ8L+6HDqxc0KDE=
X-Proofpoint-ORIG-GUID: Qoe1-hZwkkcD3FHMkfe9qucv1Wr1oFzV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120216_424962_4C556187 
X-CRM114-Status: GOOD (  14.19  )
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

Routers with firmware-managed link training (e.g. Qualcomm) can take
well over 100 ms to answer config requests while a link is coming up.
Increase the timeout to facilitate that.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/thunderbolt/tb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/thunderbolt/tb.c b/drivers/thunderbolt/tb.c
index 418ad0a61a5de84717d7653c3516faca2a3db2ec..7594bc24c443fc27af651dd22c2db4b6e5acd696 100644
--- a/drivers/thunderbolt/tb.c
+++ b/drivers/thunderbolt/tb.c
@@ -16,7 +16,7 @@
 #include "tb_regs.h"
 #include "tunnel.h"
 
-#define TB_TIMEOUT		100	/* ms */
+#define TB_TIMEOUT		500	/* ms */
 #define TB_RELEASE_BW_TIMEOUT	10000	/* ms */
 
 /*

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA66606A692
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:02:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=m6Id0krn;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=i3fp15zK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=VfnCwrkH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9Qbxj6d7AkAniYWrnpd7cmZg3e3Cv6GAl3Sitwj4+/E=; b=m6Id0krnKfGCRJ+sia2IUk296i
	r8ubYn11jZHB66RqdA+CEVM+SOYbdYMmeRIMSA9B9asS2IQun/o2YI3joc5XyMbh6/fKTT+uE0sOR
	EeQPbPdytfXFkka0w48LLOedVcIBTU6zDJFz6TkCNa7Me+16Qi9gYm+uQTCscJc7jIXj4QpWyZ2E7
	tbfUl0+NLVUwTrEF6CxGKA9dZfunLejObYnBIpzb3paURCSXsE+ra5EXfQUPsNCv+Pvp5Ui1eYQRd
	IwbqIqxkA70B0rgSLutW1rVBZhRRtn8JhVICAMjg89KIRDa+jMSeyYBI7EOJEQaPDWjyQPubyLyLv
	XXRyUZ9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwia-00000007h9l-28Au;
	Tue, 24 Nov 2026 20:02:20 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiY-00000007h8W-2CJQ
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:02:19 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOIXrEX3701474
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	z8XQanJHLa4LfJSEVBxpP6zVw8RfmcpdY5E7KecVeSU=; b=i3fp15zKSnYDtfXL
	12z6eUu4/VTtjGc2lcePyiRftP+y61UDo/+pdLMNaGNwYcd/TKw9SgQizYgxJoIe
	lfWeNQEXGsVa3FdDN5IqqSx/zHZGfv5Il90dCdpUlK+TOoQ9hy0AgY+k4gaaCPyK
	BIMYh0/ackSVhDz8F/Lka77G1RDzM6dcH5kiunCEtDnT9xa8aFYV1WDteRS1KT5V
	0alo11H6TY/2h0xEO6lMSCyRqQObC9BuuH3XsbFRmnUUn4crQ+NCPKcm2pw5NunH
	ZZYNNZLCFpflGr9lG/WUB405kmPWG+8THdm0Nwv6iRHe/iMPVwDeoyjr9QCW/xMR
	cEpLnA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5ad7t572-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-949664eec1fso64437485a.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550537; x=1796155337; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=z8XQanJHLa4LfJSEVBxpP6zVw8RfmcpdY5E7KecVeSU=;
        b=VfnCwrkHyHNiOCQuZt07SUj8eORcHr7yGwcl+OmjUvNzIVrA6WfkvPTo0mrmTxxvzq
         Kac84nVGbdfnIvSA62ayNxONeq2cldQV08LzfXLdbYvE3dudGksn3mUi2I2uRyZIfiIH
         VyB8RN0E/xEPeYONwMmGm0eT8u1uBH0KZ5yEoe+o0CHqycqELqsLW5yH8Ovmvhy9eFoV
         kFv21tWt4EtGYgczkPwuzuDuIIhID81uQvZysnX5q04FBFASSOHNrLEjee6evuZcOO+R
         aeVihRcDJukpgrOG3M+9/cInBgrlZjrM0rK+HpTm161LKJqrDvC7rRLvKeo/yMI5VUnZ
         Y1rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550537; x=1796155337;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=z8XQanJHLa4LfJSEVBxpP6zVw8RfmcpdY5E7KecVeSU=;
        b=fsuiyNVzH/G5TH81IWwycTsIjsmgDd5fwpnvClZo1o3Q0zLtfN5DKQg+7/jHUueoHF
         jH+bHzgZbgwV7zff2j/U44yJpk/TghvaNU+iDw8ysm3P7J7M4QxGE1bm6jicUTd8gSo8
         99oLWDli6Z2eRSaCSTZ/LcktbcVFuuLg975vCqNC/Pgl1QOtLE1dbsHojk3sj+71T+8m
         CCKulBLVK+jUhpIjParRSdzS/y4YEM2CJqoLfDESCpVy2OXdzxQsqwGWSi4/P3OfflhA
         hNBRjsMWOEAmJ0mZfUXjGqG64LGl2kS3D/AxRLJ1ArWn7Y/0R2KlzrrBbdDOTXpDK0Yp
         lXXQ==
X-Forwarded-Encrypted: i=1; AL+hErGZ9iOPamXa3UgZxdtlXgH3bEJgJZYI3/ILsxpxskuAD4zvKlE2WtLctNE3T2PW1XuqLxbogQjQOoA=@lists.infradead.org
X-Gm-Message-State: APuU4Z//K4piz/C3ltYYFfWxnV2k7rjxAlkkVvWQ9FZfdbXredNr7DFT
	VpIeq01IUQTY4N69W7CXUVo6IibzD5/SPTF6vU75Ef0eTJTND89LAXiMJ8txCp24brS4LnrzDWq
	YIWUdvTOEBtbZBMsXFyGBczmfCuwuHU4lPyoLaJx5jIx6DT5oczA/hm7WPBkZFpElnDSd
X-Gm-Gg: AZFdTZcHuxXRdbUeFSfOUBs/sYBlhQBJPnqzHh9wSqIc5en9mOQCtSFeKUM8rBtQWA7
	MZP14PGmI3lvxoaEwQw8bUbkKJjmGSz/A1FZJfdB6YtAFxuYpZy/GA6ZBhSA6kOLXDV6O7EtS4C
	u4FUWZY3/7wAMVG/++p2eK2ZTyJDl5UyA5V0l8Kc4zhrlaftONEBKcRkQZgyJ5AH6GG0yoxeAHD
	VnuPx3Us09VrRAiwQxWGJprmHWwO24QYOQGGZ04C1ZFOOhW1RtGvfbDVt8FRBLKcK5PDdTeSbtA
	U0YW6bwoNKq4dZtNlNkHvNBSBoFkaIeY26Sh1+sn8e2tqyOVK5o9KUxMS3nb85etpWu1k7V55lq
	gJo8eWKySqEx98q7f35NLg6a/Z88yxD3RktPPyuTjd9Vg4yzMrFM/iFqI+TKRe5Etm/MNEx3Rxe
	MpTVSj0eU=
X-Received: by 2002:a05:620a:a914:b0:949:afe9:5539 with SMTP id af79cd13be357-949ba8e9975mr2941330785a.2.1795550536722;
        Tue, 24 Nov 2026 12:02:16 -0800 (PST)
X-Received: by 2002:a05:620a:a914:b0:949:afe9:5539 with SMTP id af79cd13be357-949ba8e9975mr2941322085a.2.1795550536057;
        Tue, 24 Nov 2026 12:02:16 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:02:15 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:41 +0100
Subject: [PATCH HACK RFC DNM 12/15] thunderbolt: Refuse to activate
 DP/USB3/PCIe tunnels
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-12-a9b45c69cd38@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=818;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=xwW3bA6llgOPKSqs1BeEuZQOAAAkb355SkxSOtj9lcU=;
 b=z/91Ffst28wbqwkdjx3GfJSrokIzn34lkqLhPQ0QHj3mOadUBYwq9mfP486m5L1tFwqCcuKFg
 U9LW3XliwnnCDiVva3RM6Kb1InyIgYlgQjJ+9aP6K43DNws8/DYTDtY
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfXxKefqwxuCMyw
 G1xgo7cX7MUDy6SrJRrrWxVG6wU2pHCRxEpYAxQwEvfsNobgQctJOBIgvCnPzLM0gE+XLO7yqPB
 Mil+pOh/grHhFuRzMyWx38W3Ybs+5YU=
X-Authority-Analysis: v=2.4 cv=cI51IVeN c=1 sm=1 tr=0 ts=6b05ed49 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=EUspDBNiAAAA:8
 a=Jr2PhzqEZPgRj7HVupcA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX0kJ3ETvqeL2f
 TaDNxQIahZqTIut9z5fumAFIQ2vCctGJO8lmG5DtI6U5m/axpa0irP0Vi6zwi0Q3jt7VKmLgRCi
 BYA/gNwpXy3LUSZgATd3zBhTUp544uARfe5/PX6RfALvHR0xYNwrWlYVgSDWAqMSPesjvjNCexM
 hFgS/ugy0NE3hpWev+ub/ojuk40pbrinC9jnhwjs+qOdOBK5Jtlqz72l3nyTE9M7aQ8flHxC9DI
 IhahN9mLLEjIMnrpOL6Rn567Judk9N++UiKGa64qt+Fq+NDFB1X+Q0vMgvQZkT+Q3Nc7unLZqVX
 /ozA/5evjTxQpgQ8j4CmhrMxE+vf1VYQwLgCchXflBhgcvTSTtk2l3l6C+02uXRbttflK1J40XR
 jOyR6jfX7uRFmyzNjhGAVBjKLiWaB3963as9Uhz/wnF6ua8tkbdb43E8vDZxJbZ3c+raIJB1M9+
 mlVZZpKBwdA++abm2MQ==
X-Proofpoint-ORIG-GUID: fDXdEzWMY17k_7ZTmzAUMiJSrzcj3gnx
X-Proofpoint-GUID: fDXdEzWMY17k_7ZTmzAUMiJSrzcj3gnx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2611040001
 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120218_711576_C18E427F 
X-CRM114-Status: GOOD (  11.56  )
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

This is for demonstration purposes for anyone wanting to try out the
series on real hw, keeping in mind the constraints detailed in the
cover letter.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/thunderbolt/tunnel.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/thunderbolt/tunnel.c b/drivers/thunderbolt/tunnel.c
index 8145657835c5bb060812770a303cbf2649082a55..8b497da596b99d7f9d2e04636caa9896617af2e4 100644
--- a/drivers/thunderbolt/tunnel.c
+++ b/drivers/thunderbolt/tunnel.c
@@ -2430,6 +2430,8 @@ int tb_tunnel_activate(struct tb_tunnel *tunnel)
 	int res, i;
 
 	tb_tunnel_dbg(tunnel, "activating\n");
+	if (!tb_tunnel_is_dma(tunnel))
+		return -EOPNOTSUPP;
 
 	/*
 	 * Make sure all paths are properly disabled before enabling

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

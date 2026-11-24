Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3545606A695
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=E9AS14ju;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=IL57Sml5;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=aBRrJc69
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7fyCcxPHwUagTVNtB506NniED8aFap59IuRnwaZtMWY=; b=E9AS14juSp5geLwP4JEaYEZNn4
	DgeglRPBYwvCU0YMz+WXmA27XZ0ddaH1TMpb+YjqjRx2IpVfxhY7N0UPB8AMh5TPWBYHm0sXI+5yc
	RQgBOQKlpn3I47yAwFjXED8aFuEY5DqpOesnGQGQ3W1QarYYIveJudVWU9DqRt9rmr5jflTWJVfar
	3qe3zWrHTcc/oG0xnb0yDtkfZA11lGJa5P3Fj5aMStTdL8xmYKRa7a7MNZjtEtET2BgEiMhVekGNq
	SqHaPRV/v2BmNC8SOIDWlwz2CuYWrwRtprZ3/+juKEy8svWE+ne2m/oTjtg6SV1Xok1LJQ0nCqn1d
	FL88YOjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiA-00000007h04-37Hs;
	Tue, 24 Nov 2026 20:01:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwi8-00000007gyt-0bif
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:01:53 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOIY9CD1651351
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DKqIC7ealqa677hvEeWqUpfh/YKS156X+QuCdhTxr+Q=; b=IL57Sml5xfe62MdB
	iyqsS+cXKZEmhzpSy1p8TXZvotmSq94ioD3piMTLwelIU20Cd6xM76gTNH5LjpQ7
	Od5t1wWIZy62T5XVzXGZTsOPvw6d9CTSC3ghD2yONumAcl8JItAkUzUqc4//qvV2
	mCdcyvxugqMclUgUagSl8jgn7oqfowJatbYn3pQ8r/eQefe1KuAoEwumyjjJ0IWD
	k01FDJzwsNJ2LincnZ43ewVzm8Q9FFouz3sdW5HIpntJ+TtOf4VbZ1+s9heORZ9X
	Vsgzl3vAvy5NbGy8UOt3p2likBgzbYd/OO3wAZ/MbJSz6qkSeoeZxBL+dK7fDgsL
	quY7Dg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j54rpks33-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:01:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-9460411fce4so27471685a.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550510; x=1796155310; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DKqIC7ealqa677hvEeWqUpfh/YKS156X+QuCdhTxr+Q=;
        b=aBRrJc69Ce7dW7CHZJ9bRftTXY/BkZmUlK2oUkzD3uG2TGx94n23mvRnauK4p6WaHU
         DtaTw5dYoKKtR8zXa7ghpIeK6BuEZOkIrCwHDlTTWOLOVGvHgzMMES3WhYX46E1W915Q
         2ogHImoRh4BvnZg5r2bSXRa1Gi4Fax474xW+2+0+z4iC3tdtimHMmt6hL4nyIR9CTuGu
         I/hV8AExevk3Ec9OUkH66zpCFJQAWdrVcPocCmGlxAWg+rbWVG9DQXvnOzHtQX1Ic9hc
         M8005RySSJ+QgFmqO0gemsmWRsRolDsNX+FIRFJvx0pkr8l9Be2j5sF0QFoh1MlPQN+B
         v5ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550510; x=1796155310;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DKqIC7ealqa677hvEeWqUpfh/YKS156X+QuCdhTxr+Q=;
        b=aMPbTlxdCCBtONkjG7Fka8EEVBa6KFx4weGRlW/dJMOVDJwMgJPoF745YEf4Z2h+C0
         tYFTjT51L7Tqq/BpBkcseBnBDMwvPYY6qVOo2JniJqZSm4k/NGf5ePciC/J5YHsuZ+hP
         H0rQFR51Qihq5B5bnyyJWicgKrr85Z+OjS/uguFMJWORVdiwsdNgxp0lSPY65N5zTFaV
         1k8c7cK1Db2QR/c1EUuV5OdoEJ/5cSy/Sk7pUL6S9R0HhitLF2rBw4ooafSxczWz/4MV
         wRFn0htPbT13E58DY06xrU98VwX2OmoSgo1cyqZ4ypcuzcaMKG30Qd0vxJPw/+tkCp3l
         zvwA==
X-Forwarded-Encrypted: i=1; AL+hErHaCPGlDGz21NZA19qAAx2H1xEB+tOt0+m7000xERtddqovmkIZtQT+L3NRxIfoFdYqzLQfRapwHuU=@lists.infradead.org
X-Gm-Message-State: APuU4Z9aDjtYagiYvxIQvJxvytZrsDHaplSlRfRX58wwluWcmqqqJ6Ab
	k/lfCZaU1rhceZ6sJ7oPfvJamWO1D+ZVQQ3ZV3V87xGGggUP8ZfQvHcRFoSWXRFvnCprkPIXm7M
	PWgAXCABgeS89oiUjU1REE6vIxjlqhanyKO8SGr7LA2z0P6fRE7I78ffBzmsrSFOpIPoN
X-Gm-Gg: AZFdTZdAiN4CA3QZhaM4XoEINeFUHUHBqmU7ajdriVJl5PZlZlKwuCQN9pIpbDSZYQ5
	2D23JwC+rSs9ISiOkmYqOnRwrTKgwdC2KhSjHuzO9Bl0LAgxNUau4W7oKXtE1fpXi/9lekssDHr
	KZkTh6Kmnya0p0fawIRMy0oeOquOxNfvFteMbJRXXebVdus5qvJLCwnJLiCXC7OLHCTuplWNqCe
	7B+k95LmBAuR8rpQW13Xdv8p8ZLrQ2Swk89GTCGWGKNKNhZWLN6nls3O9GT5/DyN1hcHFPfXLou
	NOZRcqajaLvVYbLmJNLELykJzghlD4WXFmwhA7KqkIULDRr9maXLAgou4GzNaSt8oAWZi5IXE1+
	LiPzLAc7i2v7ob5frAECLmmad1zUncldiWXVFJ7dBr3vvzDGH0ybKy6pkSmRaTA47BwIP
X-Received: by 2002:a05:620a:5399:10b0:949:6fa5:1edf with SMTP id af79cd13be357-949ba7f2491mr2610568685a.1.1795550510129;
        Tue, 24 Nov 2026 12:01:50 -0800 (PST)
X-Received: by 2002:a05:620a:5399:10b0:949:6fa5:1edf with SMTP id af79cd13be357-949ba7f2491mr2610561785a.1.1795550509471;
        Tue, 24 Nov 2026 12:01:49 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.01.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:01:48 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:32 +0100
Subject: [PATCH RFC DNM 03/15] soc: qcom: smem: Add and export
 qcom_smem_get_serial_no()
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-3-a9b45c69cd38@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=1977;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=nyFC46n7zm8p8bagrW2oxfhZgXokuRotVUD9oCP1whM=;
 b=w0CIr1nIKA69Yyrqw7p+nQ1Z8hEzyr/LwyMikdNGHTefPdGSDJ2hQo3CF4MueqFXzzJ6CvlWB
 OpwZTb7VxfZBznAuMXmSLI7eSQC0LI5m1Fr2DoL7AfQWUUmvUJqXYKd
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfXz5ofTajz3Eyv
 vbd0AueYBxMa1pFHzU9vcEMxa2KROIyVl/tWKGRKSK66p4FNgq4tRCrMgktYTaS31DCNJGB5C0S
 PBgMcql+yuzZmxfy8sxdZc1EdMtxdPszTPHS2X5iPYoUkahlO35bYKkzCrFFnGzXXK1ri9RK/ni
 7q2duLBpD5LC9HS4YfFuFVqsuQCgc9h88sZPayD2JDVgMusCwksvoTgXuMl4QKd/WTXG0PyLLSn
 Xwn4pN7GoGp+0SP5+fSTNEqJQdrifBUF1W6o/fSdBiIgMMarbXbBiiHoQTCVFI10QxBXQOjI+FY
 1A/owlfhBNWToRitzU5D1XuPAtxVjggJypkJV51uFPbnFgESdqiIBzc3fTX/04t0HmWwklsUH5O
 hT+wUQrkiKVRkGzgS7bJ4QmPdd2BWzG2XOjLDuFeJDM/3+v1uOyumEKyMMGPmBBPk8fPO4aO5r0
 kU10JF6H4xdlCmHLqBA==
X-Proofpoint-GUID: N9QSPAK8enhEIf8COM3o3R2dEBC7rTVl
X-Authority-Analysis: v=2.4 cv=MvbHeGae c=1 sm=1 tr=0 ts=6b05ed2f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=qAh8wiVjB6r_GXoMeusA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfXyXs6rtRnDY5s
 ZmH7IzagOvB6p9FuarTUtrLpzomLv8kxOgHnfUQ3lqZiOQg+at0DSvP/a1ElovJC9JMjSmgzcUO
 0Tm0+1ML7CLXSfM2rRwLNNSiqZSkE8g=
X-Proofpoint-ORIG-GUID: N9QSPAK8enhEIf8COM3o3R2dEBC7rTVl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 clxscore=1015 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120152_311874_BF42C538 
X-CRM114-Status: GOOD (  15.02  )
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

The USB4 router expects that the OS programs a silicon-unique value as
part of its initialization flow. The most obvious choice for that is
the part's serial number.

Export a function to get the SN retrieved from SMEM.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/soc/qcom/smem.c       | 22 ++++++++++++++++++++++
 include/linux/soc/qcom/smem.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/soc/qcom/smem.c b/drivers/soc/qcom/smem.c
index 78b9d8b9229b94524b596c79cd0dbc26f05a8dee..45b39dd34a115fa2654603cc1b547d883e89a1fa 100644
--- a/drivers/soc/qcom/smem.c
+++ b/drivers/soc/qcom/smem.c
@@ -912,6 +912,28 @@ int qcom_smem_get_feature_code(u32 *code)
 }
 EXPORT_SYMBOL_GPL(qcom_smem_get_feature_code);
 
+/**
+ * qcom_smem_get_serial_no() - return the unique serial number of the SoC
+ * @id: Pointer to where to store the serial number upon success.
+ *
+ * Look up serial number from HW/SW build ID and return it.
+ *
+ * Return: 0 on success, negative errno on failure.
+ */
+int qcom_smem_get_serial_no(u32 *id)
+{
+	struct socinfo *info;
+
+	info = qcom_smem_get(QCOM_SMEM_HOST_ANY, SMEM_HW_SW_BUILD_ID, NULL);
+	if (IS_ERR(info))
+		return PTR_ERR(info);
+
+	*id = __le32_to_cpu(info->serial_num);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(qcom_smem_get_serial_no);
+
 static int qcom_smem_get_sbl_version(struct qcom_smem *smem)
 {
 	struct smem_header *header;
diff --git a/include/linux/soc/qcom/smem.h b/include/linux/soc/qcom/smem.h
index 3249cbd2016b50950842e357ae4d591dc2a1ec55..294b49a629b9a739a457773b041775716ece238d 100644
--- a/include/linux/soc/qcom/smem.h
+++ b/include/linux/soc/qcom/smem.h
@@ -14,6 +14,7 @@ phys_addr_t qcom_smem_virt_to_phys(void *p);
 
 int qcom_smem_get_soc_id(u32 *id);
 int qcom_smem_get_feature_code(u32 *code);
+int qcom_smem_get_serial_no(u32 *id);
 
 int qcom_smem_bust_hwspin_lock_by_host(unsigned int host);
 

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

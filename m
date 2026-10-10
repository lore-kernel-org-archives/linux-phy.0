Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CD76CA9ECC
	for <linux-phy@archiver.kernel.org>; Sat, 10 Oct 2026 16:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckX+nKEYXVMQjXNhSgnTTV2+S8/1EYS6xyCWVjGo4qo=; b=XWcvb6uNIxkXlR
	S6AYLRlNFjuxEyKnLCCJv+f63VWNf0jGVFCTe5LTvlyMKxnH0yVE/U8YobEMsquOh6WZStMvIdM9K
	bSh5Z7LIn02o7jUm8ECUuZyolnK2GRjqE207SgVC72hg1Bg2Tvb4b1R+IZ5LzMVxvRPSzRvnr496T
	C7SkX1c0kTOOICEznWx3gGakb3rHpDkurvNsOC09U24ymMs2VLIzS/apP3NsPudvxoNUjZwZ/vax9
	fCmkfEhoVttpDR5JQVx28vazbR1x1RiTPA3vk9HbYn8gy0SfXw6+x1+ItWwXZ2zQeLfqd5tOV+5l2
	nvRdDpWna1an/u2WjgOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVy-00000008FDI-0UxM;
	Sat, 10 Oct 2026 16:01:38 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xFZVt-00000008F8B-3XfS
	for linux-phy@lists.infradead.org;
	Sat, 10 Oct 2026 16:01:37 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69AFP7u0970627
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O2nGpKGuo9PQV/cUE+oKkjMvrl+HzJ34DmABGfvxrMg=; b=R5O3Ol26fhAVfWpZ
	spYmmS3PS+1exMl84vZ/yWNnDYzhbg9dJ+wAqisw2IpP/F3iQ9Aa4FBu6Vgt0fNY
	Q+tBA7oIjWgjWUrSDSPwVrPZY/zgZbRp4AIAKkVs+IjTvtugxdu3UGqnl5paQW69
	ZQLclx/6ZYvoWr7j7eRiKZpy6qz0kW/V/tIzgmds8VKsBP9dpSlXiD74Sklq8hYx
	KQDBJjPqdT8zYWLn/yH/ZktdDAfoC+upsH/J7RUbaiX+k2wPvfNjF17qZr9v7zTU
	wfeiwUqvoiox0Otl6EnquGKm3TitjzBs6AuROkQ6AGrGjXtHMBEpsACKQUpXXEjW
	eL1b1w==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7dk21as4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 16:01:33 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-147be78cd56so3012071c88.1
        for <linux-phy@lists.infradead.org>; Sat, 10 Oct 2026 09:01:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791648093; x=1792252893; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O2nGpKGuo9PQV/cUE+oKkjMvrl+HzJ34DmABGfvxrMg=;
        b=Xbs8weQm30Zlf+Td+iJaYMo+7HJdwWUJzrJcDLW1+R4miUbTFbgoB2PUeLfyFuyzyA
         McoQHN0p2jikqBJDz/ykM01pRL3s64SV+BOjIrHpg2DtOivts1t6JvExQ29ertVWeLeo
         BYC2+j2cfERK5WL0kwD/Q/C0R5AO5hOmx5P3MmQiiXZI5d9TflVASW1r+jJN5vdyuZxG
         FziBss5lw/6YQgMkOZFxddNFvi2g2jMS4JRhS400NB0himhJqMhe6Ok/7hl0dksZE/aN
         UblOX+dncxtOtR9W4SO8Ozq6wT1fnlERL+gMguq90wG5dXLLmUL8gGmsR2oyQ0F6dghz
         8kqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791648093; x=1792252893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=O2nGpKGuo9PQV/cUE+oKkjMvrl+HzJ34DmABGfvxrMg=;
        b=zokf6JbzpXBDA0Fkp5MzehYM3x53FIV9igdaM7VjtW5IxfYJ3HuZXSyx6wl3ssob8R
         6YstZ4ho5gYroxOyCk/PLH4IuyHgvjnUT6Hb3XsQgN0v11aR2kL4uBu4FG2Hhaip2kgI
         I7LCfWOFhvM/gRuZVaw2ZlFtTJ5kOi0hK7tYWQwQhQbjHtQXYx+VhG8KwFo801urrqH6
         1veJKZ18KcHsVjQChZMPtQ9W26DO2MLowHv/Q8kFU9LUbgpqPU9+zFQ0DFz3ckH64cTI
         KdUWvofePmyOs1d4y3/j18SjhIgcfolRNqYAPq4FFbpmlSbv6yVjCdn5se4wUOdY2Zmx
         FxZw==
X-Gm-Message-State: AFq9FYJd3SQh///GdK1/Xf1FqmzjMZYaIqhA3H7od7zp7EOb4TpXa2J9
	TzOBh0zFIPZP4j7baTmqKqj1vtd5PFnZdQO2Fo+4gYZiP6HN2oqcZnD/16Dmh2zlgumxm1+qyek
	w0N/4f4Ttkv3o/f/qMxy8VeLGg7XSmptlud2Q+A/C/LAJfdHL4XYu3uAPQMAcTRe+F0BMLa6aPn
	zc/Ig=
X-Gm-Gg: AYBFou0RG07mxjgehByvmXv8IafgI1mUy/zJQB1JBDJzn18KO1EUZlOzbeiBbPBxsx/
	7ZykTvh2BbZksI0xfNzfsBwDbGRj8d8MCKYin5BSf8ipCInvmofmA/cKZBDA0cijwJSlFj7QC7Q
	voC9NyUwMttPb+eKmD7cI5acweyUx62BK3uos2ioxgnbiWALA8PMrhzfU8FqMDFH4V8dk8ENNTo
	uO6TCMFd+Px7KtmZ7/i2YsFj/EitMrucWUn3+SwrU59XnCox6LHYgXea9yy1O3WM+h1+dwxK9Mj
	BlnKBCev1380vIrLK7oPhF9RA59/20hBlaxM95QXxMzKHToz7nQs999u4c3EwgF4hd7vzT7qS7q
	RnMIxjTS5JeJspkiXK/zpS+Qn+vaIxRwNgLjkuTJBvRfqONqyTlTTQLt6BGnYlDEhkQKoK7UpJW
	3sE4BOfXnU4g==
X-Received: by 2002:a05:701b:2812:b0:14a:d8fe:33ae with SMTP id a92af1059eb24-16a6309ce56mr6040486c88.24.1791648088681;
        Sat, 10 Oct 2026 09:01:28 -0700 (PDT)
X-Received: by 2002:a05:701b:2812:b0:14a:d8fe:33ae with SMTP id a92af1059eb24-16a6309ce56mr6040419c88.24.1791648088020;
        Sat, 10 Oct 2026 09:01:28 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-169a31f6be0sm30786022c88.13.2026.10.10.09.01.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Oct 2026 09:01:27 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 10 Oct 2026 09:01:11 -0700
Subject: [PATCH v20 06/13] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
MIME-Version: 1.0
Message-Id: <20261010-kaanapali-camss-v20-6-63e98ce9ac0c@oss.qualcomm.com>
References: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
In-Reply-To: <20261010-kaanapali-camss-v20-0-63e98ce9ac0c@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 060n2Jx816n6BjKvwYav_a6wj190CpAa
X-Proofpoint-GUID: 060n2Jx816n6BjKvwYav_a6wj190CpAa
X-Authority-Analysis: v=2.4 cv=E6hYNqdl c=1 sm=1 tr=0 ts=6aca615d cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=JczS9Y7s0yypmJa40voA:9 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX5lm84OJ6W7In
 Zz5cW40SfOGjV+NiEPg3F9fVDYhN7EbifLzNHtU4NSp6cDzsMfJR8suw6NmOTSShWN8WSVKpW+6
 l9t2MNiD4Ez6ZueKGrWpRgt86dX/rdB4cAUL2Qef9LlZzxmL2b0LXoby13vP1aPCg4Vt4ffkRW6
 JfsPWoSKQyg7dteSayelnEnFQJKOWKSB4ZmbYHa8j+nKemeU/FNhEF3ahs5X+8C3HArAB3TugF3
 +AUtudQ6ks4PnyJDITJYRzRSCq0fv3/aV7tmIVNTRF3cR7gGkZzPOc23j0GzHiTAr4VYVF0nyJy
 KjH+xfveCI87oj7iPQjUzleSBRDb/7AE6cHdJos72KrHUo/UD9YOLZy+nZX8k6Z0c9qKMrucBIK
 SsHyKjYRnc4D9soVC+wtb+at4nG7eBfMw/yT1v+yPlnAVQDb5Dlxvo5V1tuFLM4vVUfGBny6dkt
 RMxMDHtMlTp2boG5X1Q==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEwMDA2MyBTYWx0ZWRfX4QH1Mjij6tq+
 essFeqZH27Zyq4lxGvIn2736wCQO6s47UFllOluuEkPAyXlsXHTYz/OT+WiEl7qZ78Zv4DWtGYT
 uobmYAdGdl3HgJy0o7qE6LekA0Lv0rQ=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-10_03,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 impostorscore=0 phishscore=0
 bulkscore=0 spamscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610100063
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261010_090133_906995_0055926D 
X-CRM114-Status: GOOD (  14.85  )
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

Add support for the v2.4.0 two-phase CSIPHY found on Kaanapali, where
the PHY is driven by the standalone phy-qcom-mipi-csi2 DPHY driver
rather than by CAMSS. Add the mipi_csi2_dphy_3nm_kaanapali configuration,
which reuses the x1e80100 lane sequence, clocks and supplies but selects
the v2.4.0 common status offset, adds Kaanapali power domain and register
the "qcom,kaanapali-csi2-phy" compatible.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 47 +++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index fca3de214a92..eeceb79c1e86 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -38,6 +38,51 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
+	/* CSIPHY0 */
+	{
+		.csiphy = {
+			.id = 0,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY1 */
+	{
+		.csiphy = {
+			.id = 1,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY2 */
+	{
+		.csiphy = {
+			.id = 2,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY3 */
+	{
+		.csiphy = {
+			.id = 3,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY4 */
+	{
+		.csiphy = {
+			.id = 4,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+	/* CSIPHY5 */
+	{
+		.csiphy = {
+			.id = 5,
+			.formats = &csiphy_formats_sdm845
+		},
+	},
+};
+
 static const struct resources_icc icc_res_kaanapali[] = {
 	{
 		.name = "ahb",
@@ -5593,8 +5638,10 @@ static void camss_remove(struct platform_device *pdev)
 static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
+	.csiphy_res = csiphy_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
 };
 
 static const struct camss_resources msm8916_resources = {

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

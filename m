Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 462CDE7BD8A
	for <linux-phy@archiver.kernel.org>; Mon, 16 Feb 2026 11:04:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3n8dAOR7Pmpz7MkhWrQhg8VaNj269GTNfSTXNn+pa5s=; b=Tm0pzEbHNSLmtt
	ecnxqZ6WC/Lpe74UAAQYal3MZmISF+/5wO3PyADrxy8mOFrCaSrZUwycus8T82qgPaw7bMkXKy/5g
	srsA1dGcAm2DKBNyshf1vpIOPbgQd/TUcoOT4ojEakdsY1ncsHo9XvhfMx6Z3Gm77q8FcZSIWwEhL
	sLBLUVZPG2oc8KIGmmF0QrD6IUu4fYzygIurg/vQtT0M3f6t6bsGJHJ3TcqSQy4RcFe7gS8X6cMlv
	0T1tn+nsbdAHiz/qiCDjvI3rPrgNQnTVEqh3Uph4MLEMx7j+PJsTrvcjecWjJ0tUUy4K6ew8bWZPy
	VB8BldGzHvT3H74d9QPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwOw-00000006PE3-2qBb;
	Mon, 16 Feb 2026 11:04:26 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrwOu-00000006PCU-0CeV
	for linux-phy@lists.infradead.org;
	Mon, 16 Feb 2026 11:04:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61GAtBB82647738
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 11:04:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=YsaC29hc1Q/uN7FPMQZFz9kToVmMSvZKatd
	HYOoHKnU=; b=pUzxK5ppqodJ+kBBatU0/ZZj0hN56jH0XF3u43GpXPGxKdPVcqI
	nHR84PfFEDVP1BSYvddsECVpz3ZfK0mbD7SQiR8TLvuheIYJh56KDVm2JWuLhrm1
	W2D6kDQZ9QEsonkmKlzW7nTYuZnCmb0XGg8WTHoA3XPlT7xx9sShbgivUK7a8gxX
	RkdpFu6jYS1kTmbdZ217RmTsP4wWJdWHxe6Myk0MRib7e+Uq9sqwTWxt/3ltAKyY
	DBALlm0z8S88lV9qeHTp6aajLr56UlNIJFPDkBlpSFybKeQvHATieZ2l8GV+A2Ld
	9ynsbHSPckhZ0Xed1BXUHj0pcrjcg/7vbCw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cbfuw1vam-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 11:04:23 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8c71500f274so321261485a.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Feb 2026 03:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771239863; x=1771844663; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YsaC29hc1Q/uN7FPMQZFz9kToVmMSvZKatdHYOoHKnU=;
        b=IjNE6zZHI7d+qqpJUpMfuztLfJEgTIfIU4YQYfx626vC34JCMBy2WHxqaaTXA3qVTu
         z/ahNLtEzdx0jCKKIMfWXoclZ9EU32L5JUY1Z++RQGDhpHaNj0p6EnIdZsGagBKH60C8
         UZpSxbjqKZXgQxsqegihKTySwuEbTaQRk+fgUuNGNSWHigxruKxTwk7aEE9rw2un60c5
         JnFnKNksOTG14uGckc9+ohFzAZ9ELV1Wvx7v46h4TGcQTODPfP5iNRuMM8MiDYxylxuM
         Cz8p0CVJXarpijBc/gzrEXbFKXZfZnpI4gSZhODcC14YWnYGRNR9SNtQ7cR5W1bavQau
         JpCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771239863; x=1771844663;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YsaC29hc1Q/uN7FPMQZFz9kToVmMSvZKatdHYOoHKnU=;
        b=Ozs8kM7OZM6xpN9rfrwv0JZP2zZruSv0fe7O1gZg1bvhHi3wQl2yprjzwb6u0ktx7f
         2F/xuE3crQ7NBGqoU41Y3OAaVbVkobV1sz/K/JAuhYIiRtGCxKgTBnCdF3AvAB7Gqhcu
         k3QVuWdqQEXKq852isoQi4AC5EhJbpldH5B0TqClr0t40Mgm0FB+MWuWif4JVpfVxYgE
         FXfxXONvpbjmerl+WJS4qF9Mcx/0cWkmgcFROnvcWdlFWj7zzILeJKOHOI7yajFs0Xw/
         t5MN0z+MYR3YmBKDHoF0J1UbAIX4GVkpsQL8MF534XT3bH3B0EkpsSO7OkFpSufhaYw4
         RbVA==
X-Forwarded-Encrypted: i=1; AJvYcCV7jnsjmCN9GV+o6sf1hZZ7c8mJu3s66rwENexR0jQdomKi3F8h6UHZxfXJgRtMtjd7gcwnTkkn5Ik=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzj2GGI1pgLaFN/nothQHYxxwK1IxL/MsPvE7JqMzzSBC2ceda3
	LurlkP1rl/wp0pujkqubQ0PLb+AMHEDr8mcsHdQyjV9ikHINBqkA2D65rFS5CXyqjgBVUHSM3KC
	TWZlTKk68iZ7zFP+PZJsaZ7LHp3hJ7VlCFba/aZIY2yr4RQ0IKDpyhFXt6Kn49flY2KGS
X-Gm-Gg: AZuq6aKXNHx4JxsXwnR46jCCv0IPThpqMb18nPOZD+RlyXqfJor2lWmaPOw570mQg2I
	Z+PCvPnX7tPJQr3H+vXqegCPxVoLLwf7JmIVhU9Q3GNAR3BFZ29KSEvWdaNMMbFtTZJglVMU4Ls
	Foc6LGf+6qfCLfI/DgsFPNANvYzY4O3iCyyINH4ClFeKhXaCYpB6dbEw+ifdmVffewuVbEICXWx
	GB7H8YkRUJH/m9iXo9DFzN+6p6fLmGZMk2mWwtsuuBm+k+T8NghPfjVoUBRH+xCcAGelVdOEC9W
	9yXu+0mGdht7IjKVF5NxphZxb/CK4IiI5r2JEK5cVXEZrGTfB/8cFnqrqSuw7UoaJE8yT4qtpjz
	o6CbKGJXgWiybRNJdrcHktkJUSe/lGWwIWgfHIg==
X-Received: by 2002:a05:620a:458f:b0:8a2:e1db:f442 with SMTP id af79cd13be357-8cb422b2fa6mr1150430185a.30.1771239862524;
        Mon, 16 Feb 2026 03:04:22 -0800 (PST)
X-Received: by 2002:a05:620a:458f:b0:8a2:e1db:f442 with SMTP id af79cd13be357-8cb422b2fa6mr1150427885a.30.1771239862105;
        Mon, 16 Feb 2026 03:04:22 -0800 (PST)
Received: from quoll ([178.197.223.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4835d99497asm589572745e9.6.2026.02.16.03.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Feb 2026 03:04:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
        Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, asahi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH 1/3] phy: apple: atc: Make atcphy_dwc3_reset_ops variable static
Date: Mon, 16 Feb 2026 12:04:14 +0100
Message-ID: <20260216110413.159994-4-krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=896; i=krzysztof.kozlowski@oss.qualcomm.com;
 h=from:subject; bh=UIwNr/KY2E+0ecUw9P2/kbSYuPp+7DKAt1dGLTzex10=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpkvmuzb0vB7oi4pn/35nXpGsWObsKmVUpTChgV
 lEXrNPSfJqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaZL5rgAKCRDBN2bmhouD
 15lBD/9b781t2vSYMqy9NeIzD45ooVBI2AP+j3b68mE6MAzdwlE6C5SfFYOsu3FEwnFziEKY3Ot
 xIRRsy2mpvb10akE0ks+pptxAP9eYmh6U+XHUSWMR6oFYwIo78sDYt6IyFh7qoRN++jOCGn48vt
 zRPJDrj2Diq8Hw7/hDrmxzUHE6gPZfMZtx7oFh+bTkC6NqhkILSlE5nQ0QYnfko41bPtvPYvKz2
 kh0mIc8OiM9XH2OnMR0IYl40IXiOOG1gfaMymm1NU7XBU1k9yRns+CizJEf/KvQj//8ZNYfwUhp
 N7IpPE6T5IlmXt/E4LHw/HGU4ACBp6sNbJKcqovAmujuiFYH0e8Gw4QKEskOHBEjnvyJ4Zai4EM
 UCUvxXBG9Qzi0xIJoQ/jJa2dzzvEEJ8Udrwf7Dni8RVAGrcnv/LI2qxlk4KLu4pMF9xj23QXWqX
 8/NrynqeLalAte5MR7suZp5nveZdoTYrmt3cVwV7HvPT4bsjpbM0wDLqcwR1N0Mme3dqT3V3KM+
 ehQomFxZedoDQIIKC6E6VOvJPbi1e0Zoje91GCZ/XnNu9Kmn/zeUHlKIP4V2TjiVXXAvolgeQf2
 HFw95Z5fg6pUxYfEYttaKMAFqip4JgTbdGFcmBfhIPPLvVJbx9WL06wFnePz1n+LlVNrt0oMOH9 11DeE6vi6MJa5kQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Authority-Analysis: v=2.4 cv=Jb+xbEKV c=1 sm=1 tr=0 ts=6992f9b7 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=6nO30s3o7FuWeffXwhKHTA==:17
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8
 a=V4RP2X7TQvdl7F27wUAA:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: KVRQ_6RVRLqH0pkZlDCadWGfQinxiHKu
X-Proofpoint-GUID: KVRQ_6RVRLqH0pkZlDCadWGfQinxiHKu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE2MDA5MyBTYWx0ZWRfX+UeUP1p7pLQB
 kYAa1e9VUZOp7+Z6n6PLzb3bVN0eqelCyVpWFfvdvGmAU5QJ2MHqtEc/ZN3NDWwzqdX4OoUAGCi
 mUlXc/Q6HltNtXhVJQNjU+fXgBvyIHyD1gqyfADxvaHpR8/1G4lExrZN925c+YAsOodArNB4tvf
 5XQAslW8p/XSXld+qNHJ7cR8B3+4Rzi+Addmq1GoSq++AkQixiWe/rhfYI5GARPnWliW571lBJw
 4OWEM5OhnTwFIH+B7U7F91PgubGdfRrVjsa2PjxJQwGwlYJ2/5Y0hcN+4E+xf0VwcpCqB0ngO3p
 5vitw0/drQAd1GqwGbE6O+ii8Da/AHTRkLUA8Qavux49jJ247NMml5I3zqNEHqd8NZL4vIy+/nc
 zBUAAuVkEa3YVErvc42QrUF6Yi3HNBvjqTdzNhVjzNKtdmNV6ucHPoX0mA4Ia7966Wem6GuxWoR
 /2wha8HWeTzTdZMS1bQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-16_04,2026-02-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 adultscore=0 suspectscore=0 spamscore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602160093
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_030424_092453_21300B74 
X-CRM114-Status: GOOD (  13.38  )
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

File-scope 'atcphy_dwc3_reset_ops' is not used outside of this unit, so
make it static to silence sparse warning:

  atc.c:2026:32: warning: symbol 'atcphy_dwc3_reset_ops' was not declared. Should it be static?

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 drivers/phy/apple/atc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
index dc867f368b68..32d97226e926 100644
--- a/drivers/phy/apple/atc.c
+++ b/drivers/phy/apple/atc.c
@@ -2023,7 +2023,7 @@ static int atcphy_dwc3_reset_deassert(struct reset_controller_dev *rcdev, unsign
 	return 0;
 }
 
-const struct reset_control_ops atcphy_dwc3_reset_ops = {
+static const struct reset_control_ops atcphy_dwc3_reset_ops = {
 	.assert = atcphy_dwc3_reset_assert,
 	.deassert = atcphy_dwc3_reset_deassert,
 };
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

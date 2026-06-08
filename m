Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC67BCD8C9F
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=34H+3p+6bk+l+CZy6ckhTCFQNDZltcrtaDWMzxl7EPg=; b=c111gp7Lj/TwTE
	Bn+snpPjMz+ugl9O7mO/aSYcysFn+nVehf26t/FpaMyHss28bu8Jjv68prqnlb4AJxtxPKMY7oY9q
	d4BUbAzLM2OHF+33IRHuVf3GgliWSVo1E3y12lliEV26enKyLlpteDM8YRbi6y100ZVsDpIdEY8KW
	ojBPV12ADikbQOFZ9on4hwa7+je8hNhBE1iE7NYdJqTlZ3UMPDLBMDXsjL5NwOuPxH8AowRqbEXCE
	j1A+2OzMtUwk56Tdj3tjSCjv6cL2MnB07BQ2FnyOYOJgoBsOMAij6O+8BM9THKeTpCcCumBOxsNJq
	FvYEy9WanesEMEuzUtlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXIq-00000003LK6-2OlR;
	Mon, 08 Jun 2026 10:33:56 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWXIo-00000003LJZ-1HfT
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:33:55 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 658A2vaL2881901
	for <linux-phy@lists.infradead.org>; Mon, 8 Jun 2026 10:33:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=3GeAp5gromZM7NUB9+Gdl+Z3P+05LRfVRMU
	kyPBfN4s=; b=I9nCPyJQMndq/fShdXiRMUwtWy0Hj+k9aSmnI7rTDEQWYwzcZ1y
	9MdKoAr6Jf+8jDchswVlW9ZI9IeT6v3qYMQ02SaJe16bNWLSPKY7tHKdRs2xVnvB
	J+q3shx5CRMKQpRvqZi7+wWgjS3IXyNYEef15s1cdTVWkzBXoyCQ3JpKqtZ+Eu25
	b4BeGqLJLv5MIWNSZ6zu5aiU93GRzgK0+v7W4uTIArLCNe2bmfxluKtsvT77NIWc
	apOl41VOoAjrw50itfNVa7I+cRlutKzKN3uOFC7M0NV7/qk95ZJbd/wdyQDF1DKM
	idwaZG7u7tg9cH5qgxOZ4MUGbkVIYhQFtrg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4enun404ew-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 10:33:52 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-36d99333358so4112273a91.3
        for <linux-phy@lists.infradead.org>; Mon, 08 Jun 2026 03:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780914832; x=1781519632; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3GeAp5gromZM7NUB9+Gdl+Z3P+05LRfVRMUkyPBfN4s=;
        b=AKw6gd4g/SjHavIyaN6ogj3CR/4zm09SWW2bSO98EKfRMcNYAReW703Kt6C2dwsXWw
         kJQIwaloq+PopkqSnYgMtUEtM3YC1n6RR5XYerR8N43I9Koy1eC3YwtJCiEitrRARr+k
         QwwHs8tm1Wo+AZqZlObUdNk+O/4ajF+p0GkuVIe9a8c0L5NyKsQBlXXZYNlQvIMUUGlu
         QThvuPXUw5Mpu2M9mLE3sO+XzmztFt0arH/Mnvx3OBAjDEyYCfmiP84T0TfJnFjwnSep
         0qm8wMlbXv/mPGfgfnJ3pgzXoqFxwl4KGCqjIOIMRP93vGpTe1TfjIaKi6Op0xOn65cn
         jLPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780914832; x=1781519632;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3GeAp5gromZM7NUB9+Gdl+Z3P+05LRfVRMUkyPBfN4s=;
        b=qXYMWWHNknXOBy/3mSV0agl4Dr8Bz8tyIHQ6qKCJzFWyZdNDTRt4GrQyJqIvgr0Gse
         uRiOsa3tG+CEIqnndtaklOKsXpWz8SAfSub8KjgYKgIb8ab+tryC/w3D5ad+pvWD33ac
         eiRybQkFkdU+YLYWjesali+O3F3k6w08d6QR83S2k/fbk3NFT9wxZctQt5n9q9uqHVai
         dlLrrWi/Dx7fSE/6HeBlcIhAz+Nu4dCDwGRX5L4L9B7jDu/LXzwOKNXbdf/ZFGbCqoPO
         +q9Bm9C0uIoW4r0TTjU5FsE5+niijud2QXHQ+qe8J1ZVnDxd3S99OR8uPXu3Aae33GL9
         ehGQ==
X-Forwarded-Encrypted: i=1; AFNElJ8pp/X88C2FDZnHasLGRO50+YkwdGl1vb3LRpQiRZ8ufhDKn3OuLY7meGdFSSZRbQ3KkkXVX+Lzl/E=@lists.infradead.org
X-Gm-Message-State: AOJu0YyClqlO4cOXw7dMb36tUzJgCR64yZ36/3l8PRqRpFGR43Q9+vpa
	2ZpQsNEWiYABN1Mh50LpTnKLAQoNut35b1KCsMTdHmp37Da+Dre5siAUj4N6tHZmQsG8kg5hC/i
	9CaIYm0lWtzWku3QGAVRpygDBQXXlxswJ91Bl1UTxm/yGXNgs2HcmQDFC3OmUPGyv1I0r
X-Gm-Gg: Acq92OF5enxMHEN62E0oDIEe0bu5gfd0RYUvynQiJTZtjK5EAhJJdhiy+ggQgSr0QKw
	UIgGOV3+JlR/+8gdc+Y6Bh5UfO5sN0fBb1mGtMUpaWQWDJXChUsW5cMGAVG6xMReWhZW5DgwYLv
	0RlqsM8wc3yrBpIdWjuoYQ3ugHzC1W8wttlXOFRA3apskZporfjpfM3p4qo8b7V9ppkJt7AK1y5
	AuCJAT6trmVRBLPxPvpiYS68TmQbys33f1dH3YjLXkZrsc+E4HuCXbCUf/Wm1duq2vFMnWU9N1k
	N4Rp6Vh/X1bSmrLQm3ssTCofQY3DLGVMAlB8RFCH9iUFuF0kIPR2fT/lM4iqhzjBMOz9IM3boZr
	CSzGvmAnfqOU4tihP7tZCCtpNcwMk1GuMU8yhKlhq3evyf5CBL5n4t5PJoTNzUKunJgTK24v7G1
	NAvarEAR7NoWpbSzHgB5Ehn92SF6giQG7iU+mUG0w3D75AgorESNJyQ5Bwt8DUyw==
X-Received: by 2002:a17:90b:1fc3:b0:36a:fcf5:64d2 with SMTP id 98e67ed59e1d1-370f0b554b4mr16414539a91.16.1780914832255;
        Mon, 08 Jun 2026 03:33:52 -0700 (PDT)
X-Received: by 2002:a17:90b:1fc3:b0:36a:fcf5:64d2 with SMTP id 98e67ed59e1d1-370f0b554b4mr16414515a91.16.1780914831731;
        Mon, 08 Jun 2026 03:33:51 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-842824a2600sm18571570b3a.27.2026.06.08.03.33.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Jun 2026 03:33:51 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_wcheng@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Add ipq5210 USB phy support
Date: Mon,  8 Jun 2026 16:03:42 +0530
Message-Id: <20260608103344.2740174-1-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjA4MDA5OSBTYWx0ZWRfX/UA9ALUaCyuQ
 UpOaSjIntnGaD+ooh7SnUpvmAD9bzyhiv9ObwIjAbYaNtGagnyGsXKLEzjEu9SG7tl58IovOSBV
 J/IzL0NuCt2oZXaDiN4L/CsQVtL6SmUs5R3dUeKCcht9lbursd/l2BuW9YsZJkmPgUY36jAjyeR
 4xzaxECFah4iKmyzE6OEfZKT/ronIA1ptl3eXprGlIUeucmBXIuEzm0DHrtdUnBGqxb9YAMfYxE
 x1CQnSihR4ojKFjhUJZJOzbIV/0C9fxFoXr2chy+QKO323NOjjDyKkdxojQ+hM9uz8uoxw1D2Wo
 dJzG69pAoyLosG5/It28lvYd2fiNCX9mJ8xYfy6KbrPp6bDhfkRsFBJ1QkfZ/BVjSaOnR2hdyTi
 4Rc8EDNufxvVjoSlBBImqMdAcfg6h05hmYtQ5hz68Nu0FGQhYO+/3vW8vRiPTaSgnYpRYzRkXUe
 PBiX7EMPsNAjJVLL+PQ==
X-Proofpoint-ORIG-GUID: GB2l99y6Mgf3DsYmp8YzjoPvcGr6x1np
X-Authority-Analysis: v=2.4 cv=ZY4t8MVA c=1 sm=1 tr=0 ts=6a269a90 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=rhUFs459tUsHgh-773kA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: GB2l99y6Mgf3DsYmp8YzjoPvcGr6x1np
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-08_02,2026-06-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 adultscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606080099
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260608_033354_372584_5E71C3AB 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
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

The ipq5210 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
can connect to either of USB2.0 or USB3.0 phy and operate in the
respective mode.

v2: Use ipq6018 and ipq9574 as fallback compatibles for qusb2 and qmp
    phys respectively instead of introducing ipq5210 as a new compatible.

    Dropped driver changes as moved to fallback compatible.

    Separate the controller and phy patches

v1: https://lore.kernel.org/linux-arm-msm/20260515-usb2phy-v1-0-5f8338d466bf@oss.qualcomm.com/

Varadarajan Narayanan (2):
  dt-bindings: phy: qcom,qusb2: Document IPQ5210 compatible
  dt-bindings: phy: qcom,qmp-usb: Add ipq5210 USB3 PHY

 .../bindings/phy/qcom,qusb2-phy.yaml          |  4 ++
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 46 +++++++++++--------
 2 files changed, 30 insertions(+), 20 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

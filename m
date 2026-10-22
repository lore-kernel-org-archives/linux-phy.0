Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836C8606A31D
	for <linux-phy@archiver.kernel.org>; Thu, 22 Oct 2026 10:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=TQ5O16rP;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=daewYeES;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Kef19D6P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=LO57vNaWE+Mo4tp6d8F0zu/BJYD2ecJDTiYXmDvg24w=; b=TQ5O16rPfdb32njuXVwmJLqMhj
	orVBe7RiIybkP6b/CO+7HLsj4sTnRtAl+PJIrYwr5RQTCH9nfRo3gI1dDh7xQrSYw7PeD34y8T2P0
	AuWElTX7g87mA+Re+tFwJbTvnM32IOGTIzXYBAx/A8zAe22LZvv9Qu2SZ0tBL5LNkme1Q9XMeizz3
	cHYzHTIhUB0auR0p5yy2OdVb9BrTDGh7BFej8CIqt/tWEhSAcYtcczaAji05aXkwCz+mdqX3My5Rs
	ntGzAEohMnrLJAYNjI6xPd0Qax9YQVzBzEwt9w8bChWmqKr3z+LcKxuo2O6RkGbaITisvQahQfRcM
	am4VZQIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqGj-0000000Dx9w-1BQM;
	Thu, 22 Oct 2026 10:43:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xJqGh-0000000Dx9L-0F1k
	for linux-phy@lists.infradead.org;
	Thu, 22 Oct 2026 10:43:32 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69MA0WGq3923125
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:43:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=2gbrInL419R6hHZSv2+xMg3r+A2bgFZW0N0
	Re/fN6sw=; b=daewYeESSfna48Z7aDymFvsZzyPleeuq/V+ZWtxso4EREZCT/zT
	1XstK8fzR9YaH3aaW0cFy+gXmDj/vnw+Ysojty49uGV+2VIX2NX7I7bjKde3+qvt
	p0Cr/0v80+bKA9gK1qw/F0TPKxMDLgvF5i8x4ZLl34wJW20hw0pUOOiyFou6zakE
	gBGoRVMOkGvoLREnlYvGiWXFnF1hNcVS/rq188YZqln93tRD/yfUVLUdeFC9vlF2
	3KMRA69gol89xu8CkdnYQzQgoWQqdZ8QPG1YUkm9kgk/zYOG9bLJmJMNn+lcj52M
	MrW5qlR6uRSHxcn2Pxf2TD3xKjyD+nNO3Kw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hf93bj581-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 10:43:29 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-cd0b795aa8cso478616a12.0
        for <linux-phy@lists.infradead.org>; Thu, 22 Oct 2026 03:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792665808; x=1793270608; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2gbrInL419R6hHZSv2+xMg3r+A2bgFZW0N0Re/fN6sw=;
        b=Kef19D6Pi7VfvcNeOzqbuD9NfGrF3dn9Rv5z3Nt235AVe9uGoeRlySCLCU8E1WtNL5
         /85R8AiJDMZyvvTJdHmOKs8lKwt9gTY+6zjm3GAXr0xzhs/FStzItHFb/5abl9XqxG82
         4aojL03g6XNU61zB7huWJZF7SQcZYuALZN+d6RZIlB4jpl76gTrGDqiyWV6KHuEvLwDI
         f93xlEjg7odQUxqFwzh2WnPkZEucW6bIKKHlk+4Sti0bJAw4KAu7YyeXhDD9+YJ14f6D
         EvZzWtrBoDkQrI1HoOtvI5krsZhHbVd3b3S4tM64/dvF+gYWkohpz2L13G+oXQ56o8Ar
         sNUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792665808; x=1793270608;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2gbrInL419R6hHZSv2+xMg3r+A2bgFZW0N0Re/fN6sw=;
        b=aebGG1irwqUAT3n/1O7LKjk5D7AZwa9GQiGqHGFpiDRnapXP/x0vIJVH38kbMhDFgG
         8ZMcaEiDfsFtQJ0dt60lU1dEWhM0yQanmAmgSiVNmF6YvnUzjfpskl+2ugKZltsG6k5j
         gCzW5Wij0SU+2vfJ/avRuMha4iNJBZcsdG6DLHqhohkY/aTQfhRD6tGXmd540YJMNP81
         n8SU87Plf1b8gH0A3pu4LPECkmt6NQZIE+alQ1A8eBbT0XpGQ+13NkssA6T5PB6ZaNPo
         OdfwRSikbcQk6+UlhlCDYJ33Agl9Ng7wj667CVc+y9VkuX1kcYMZNovH0w/UcayhndGt
         QZog==
X-Forwarded-Encrypted: i=1; AKwUvBwHO6HSQkVwJdRbmH2Gfezx+fqaVX0aFVglk+and2VN/ju4xszSe5mjyJbiT9q3W+fA5hynYqNadiw=@lists.infradead.org
X-Gm-Message-State: AFq9FYKu2FrOnC3FBG0VdPYXmL9jHVd33pWXgJXlM0URlwsnaFeKiBcU
	/LbtZZC8bibDNYNFHN09cBlZ+uDNfy1p0l/E0QbN2qh0+WUYHfYibNVudRg8LKUBjbWX6i9e3q2
	dO5uAspFpywJLp3jCgP4+W9ILQ7Cd40oksEXKSgiHiPBrvjtCXTyONiVWZHMHoTugzQLn
X-Gm-Gg: AYBFou3+3XfpHPphtzbLlkUzT1aMXk0ykUR/xDfDxnShrHUWuMLvByKzYXAE8elRlCg
	mbarkZ7QJib79tG6MLzZx38qouLh3jBAYO6cJ4ZbSrXzuCIujOAXnYUVqNYdbgNNwBC/gJZ9Rxb
	hWyk8xrqGMSoP7o80xmy2ylExy8VkqlXSpcgJaOs8+Zx/I4Jd9T0f9qj+gpMrBvopOqRMI76bS3
	0IMFuNEMdbIvrayMwQRt/JOXrVnXDX6MC9Xe/2mwMydIBQj4ETetAqJCNHBOZfFOtE/Tp7MEqZD
	naqNmOJCTOGS2eFWPVa8Ch8jx56/xw0xSt7K2boywaPJFsCPGyJIV08d+bv6CWnsnJKGltqlWLL
	17VyAjR/QjRuAUc2Ep3Z4XSGS0TdR
X-Received: by 2002:a17:902:ce82:b0:2e5:debe:cb50 with SMTP id d9443c01a7336-2ea6263513dmr13737715ad.4.1792665808431;
        Thu, 22 Oct 2026 03:43:28 -0700 (PDT)
X-Received: by 2002:a17:902:ce82:b0:2e5:debe:cb50 with SMTP id d9443c01a7336-2ea6263513dmr13737625ad.4.1792665807987;
        Thu, 22 Oct 2026 03:43:27 -0700 (PDT)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ea3b43b53dsm22327565ad.39.2026.10.22.03.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2026 03:43:27 -0700 (PDT)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: [PATCH v1 0/2] Add the PM suspend/resume callbacks for qcom-combo phys
Date: Thu, 22 Oct 2026 16:13:19 +0530
Message-Id: <20261022104321.306679-1-prashanth.k@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX/uFbJIlLSauf
 vhLFof+7JsF9jgOjpa581mxcyd8yG33vXj05RRxcbM4m2JHykYZs3ST5nWuRZl0AUmPCNopCwWZ
 T2uR5AISd5Tw44OwTdeuE4SQLFlX18xC4jPdzH1EsrSNBLttpdiYxQgepqP2hvxokrooQq9AL5s
 ADQenFZhWf2bSfr2G5xXewc9QGPBhnHLX9UmpC8Ou7tCiQp1103KIiZBOndoisny3qasbvvzWMi
 cWJSkSZ93WyRiZKqaaGklhLFaytgUefNoN923Caa6hq7iw4mESDb+wjIbjFf6vzMriHOcSZY+C2
 GHKdXVRbxVhvtJIqpLOYasMw1UrYtZX50U99u1JTbJ93BoQDO2HTKWEHoK7k7GFV7Ugq3sjWdzR
 C5AHjG1kE7LTvBn32ejgizbiRqTqwg==
X-Proofpoint-GUID: 4QukttupKufopgOhi-SYDxSbz-nBDAW4
X-Proofpoint-ORIG-GUID: 4QukttupKufopgOhi-SYDxSbz-nBDAW4
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIyMDA0MiBTYWx0ZWRfX1VIrtdTZH53e
 TW5RWt/7RZrgT6zTkdcnFINqIpAahPqdJqMwfyBFzRlEs5uJAGUoI5EjTk9YpkevImsocfub6qR
 A3kvO2V/qu+YilE+uW+Ur/gkSn5T3XA=
X-Authority-Analysis: v=2.4 cv=CMy/zhrD c=1 sm=1 tr=0 ts=6ad9e8d1 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=cP5vnYSvVPmSLNQO43UA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-22_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 bulkscore=0 phishscore=0
 spamscore=0 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610220042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261022_034331_219524_66BF728B 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Currently the phy clocks are left ON during system suspend, this leading to
power leakages. Prevent this by disabling the phy clocks during PM suspend.

Prashanth K (2):
  phy: qcom: qmp-combo: Add PM suspend/resume callbacks
  phy: qcom: qmp-usb: Add PM suspend/resume callbacks

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   | 17 +++++++++++++++++
 2 files changed, 34 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

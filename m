Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B21FC982F1
	for <linux-phy@archiver.kernel.org>; Tue, 22 Sep 2026 08:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZzA7WMATE8AeM1TwvB0EpLi7cBPTf6M6dj1H3A9BbE=; b=ugsGvqwb7I43TP
	Ed0NZ3rQC0TEhl36NyolneAt158hI48tHzet4/C+4RZmrzPkSnFJJMz9IC6PBj59sDsuUz05V6YG7
	2evY0TQtSJTEhyjH7Yq29LPt95zsZH1d9bfXMjUpyPnIxqxmRJ7hXxT46yrJIZRJeFXzv+WSCcOEW
	nc8OVY0Q4qvDkEFXMY9R49OlDQkaLlYBAp9/A4kd4e4BpsUDvDPffkQrZfnxet+GDcEluEbdVJyK+
	pSBnG1TaLSHbk0Cx+/3UMGWBdcdc0RkbIa8s4V0XFFqdnpMsgeNZy8/24+vM33EN0DarSQfUpB4iX
	LQRg5I/UDhbEA4mj+PxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vcI-00000004dFe-0Shv;
	Tue, 22 Sep 2026 08:12:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vcH-00000004dFN-1QGl
	for linux-phy@bombadil.infradead.org;
	Tue, 22 Sep 2026 08:12:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=czex32aQLz7Wor3ZwCAP8jwKGlUOBphDFuP6jLqE8W0=; b=McX0yGG0hEv6v1mbU+BJ6tiZf3
	b/xDlJvGw1CuKd/9ZVOqK5izk343ejdhY5hnBePSFkZ5YkgmPHBOz7io8A8Pr4cSi8FN2jLjNTGLe
	XKOPNCn6gSsRiev9SR3CmVc4bIfwY6r2VGb7V+jlVSz8Temt99WsbY+TWsZHbV5nEDFJzbwKuGg3c
	1//jmvKm3L6iUF9reB1a7vpjONOCMQ0MorNCxq7PY3LFJP2DMNnxQhsmcoEGu+bqDJjyK4ae9XJbV
	RLQWv4CWLaBFLsdnKJs1Ux/1U4zw756/NZlrmoGuZ4rlFCCoXtEFEOjPO3eqrmfMZgDYFspHn0qKr
	fM8LNygg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8vcD-0000000DFTy-31NP
	for linux-phy@lists.infradead.org;
	Tue, 22 Sep 2026 08:12:40 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68M76oqg2166201
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 08:12:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=czex32aQLz7Wor3ZwCAP8jwK
	GlUOBphDFuP6jLqE8W0=; b=AOsZ5kLnNaEZC6jEnx5gtyQv8DV0FjojSlMnM/Qw
	M3NFGOApHMPDWFq/DqkvSgDF7amG+8R9DwLCQ2f4nNIXDUFqq6dxXIdKViN4XidJ
	dAhF36NcPaqZWaNziG5WsVqkfIuT2tFSTCI5OENkHW3HYuw5Ck8aOpGT3u9pREnl
	yONur2P7z8NxIAEqKiZbDzw7/eRzXLrUBsrloN0OQBWG2IlrhfKyLP+ucb20FE6k
	+i36puQkjTSFJm+a+c98k7R4Gu9R/dUDaT3AojxuqhfHTOq0Vq5WRApFP42clcJZ
	wRCR+JUcpYa4maq1gYyHE70LjCbJaUUN5FZroW3S4dJ0ug==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gu8xetykg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 08:12:33 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-39deda201bcso5266621a91.2
        for <linux-phy@lists.infradead.org>; Tue, 22 Sep 2026 01:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790064753; x=1790669553; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=czex32aQLz7Wor3ZwCAP8jwKGlUOBphDFuP6jLqE8W0=;
        b=dOU7JJXjnnMG+uJjna2YhrpZFdtbBrwcgCqTSw6tUOwB/EH0IvfAfwIzyWIA7yCi1e
         ODiwkd0T+nSXaqsCYKjvsdNJSzUe8okjzEMxyTXruF6DCRQym0SlNec5zQZq5DaYxyrE
         RSMXpZcbd0Z0R27y532mzOrsKWo5vHoygDx61oNO48beJA/8wnjiOk3Jdbr8hAD/SCzI
         E41PEzNadt46EO5y4KMUD8WE5R5EXhdRT0R5qqU3ewRnBpMBSDh22En3iZePKZzJ34ub
         vJoxpbRR6WNVJx8/jIoXHl+Ki+awLpiDjSLKBmc47fyFKPBaeR8539T0pISnKbScwzhm
         jjow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064753; x=1790669553;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=czex32aQLz7Wor3ZwCAP8jwKGlUOBphDFuP6jLqE8W0=;
        b=SWwu2U9qDl74RndKijYd4yGdQXQDzwOu+bDSrU2PbjZWrZDrlYQUZtWrLmfY9A2Ui3
         tPHi8UpCDDL+lwKa5DE0r42mvtpuaP2JZxhwhbBb/bCW/rGvR9y1nHVbKzGHx4oY/wLX
         EqbAVGzYoN+md6Xrd0A1fkiOhkCMR0WH5gBlTJFmnwKEHcb/CNhXhZX7ZufDZA65cHe3
         qXeKH8kOLuUfAeuLnujA1vdrW325gEueQvVEhh4C3TuGpqyeAbuE7lKzCC2joDQPvHn1
         HNGiGQ4tTj8VRsfg7iD9z77D34Y7RQ27DVJRSeFBJkjtlFD2Ba1gS3lFuO0tpWl/33Xn
         18sQ==
X-Forwarded-Encrypted: i=1; AKwUvByIckOVbi78g53Fc02DTk8ZfZlaWZ5UkSQrwRoDq1aK0fF7G+AA2CDy3N4sJYK6BHhbM0jKmD4BfaE=@lists.infradead.org
X-Gm-Message-State: AFuF++nDPlAiqQL/dKLbLRYsbTgx6WgEsmpDYqFfR9DOVF3o0Q4NKD08
	8qdMoqwlDe3vvVI9uaZyLu+Jo1OXqdke6Mdyn8GKfY6UZxBuUq2gwjSWxazSG5EhPTNEIFh+6Th
	ckZ0E7j7Teuzuc+qWYpXrK+6WDqpM7+kv5BZQ4TlLXMitx5w7duxw06WFTZmNE16amuHc
X-Gm-Gg: AYBFou0fHSmKtbgL0B3z6zA3w9BoH1qstT7RFG8lmCPez8YqCXQNajtufdnCJcN6S0Z
	p1r8MojG+HldI7IX3uWbyUYBxEMijRlnChsZ/Er6l5cmnb2PaRLe3EbZVWgRExyCcaZ68CgQCBM
	EoLX664OfMeZrddo/NoXvkJ59ttFTQSlVPKa/TGYv75mb3YwG5QnAHnYSuFsKI86P4NWKpLD3jS
	Y+3mVxzy+2VE5aazoFMVvhZL3dTYY/zYUgWZ5Z6+ijoRCeUcq9quQpmS6gGAokU8M2XArRvD5ti
	aRGzHPZOAIUNhLBxNikxZZUlAFp0S9T4hdR1irZeFR5EyMjbZEY5FWDOF6nWNWxMLwtKwJojLGB
	aE7v7BVSqj6kR8SLweBBfsOnGv8Iscu+WKhWDiqa9oQ==
X-Received: by 2002:a17:90b:574e:b0:39e:1fb6:9659 with SMTP id 98e67ed59e1d1-3a073116705mr395963a91.22.1790064752844;
        Tue, 22 Sep 2026 01:12:32 -0700 (PDT)
X-Received: by 2002:a17:90b:574e:b0:39e:1fb6:9659 with SMTP id 98e67ed59e1d1-3a073116705mr395943a91.22.1790064752305;
        Tue, 22 Sep 2026 01:12:32 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-144f2a44cc8sm3084889c88.13.2026.09.22.01.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:12:31 -0700 (PDT)
Date: Tue, 22 Sep 2026 16:12:24 +0800
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-pcie: Refactor common multiphy
 handling
Message-ID: <arI4aLn4GSnVQXO3@QCOM-aGQu4IUr3Y>
References: <20260921-nord-v4-0-ed05c6e09240@oss.qualcomm.com>
 <20260921-nord-v4-5-ed05c6e09240@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-v4-5-ed05c6e09240@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: MMUnWH-kCjLoHp1ZS6akHxw5aX6CoaMJ
X-Authority-Analysis: v=2.4 cv=PZhqFShd c=1 sm=1 tr=0 ts=6ab23871 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=kj9zAlcOel0A:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=Y4sVft1UDeOkrP7wHAgA:9 a=CjuIK1q_8ugA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: MMUnWH-kCjLoHp1ZS6akHxw5aX6CoaMJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIyMDExNiBTYWx0ZWRfX16uxbwNBBfAZ
 UNqnCkUchykCgBO2BGs2FtbkHYlVcnVCZ29GuY0hrNl1miLpgSg8RvqMiCAYlGWNyTWCxmPJu+S
 Vb1vkpPEHKsKKBknuXB2WRGK1XXCaxcCHayjNyZtA1ZoM8orw2bfqpRWJZG2a22nryKu1Spx6wB
 7C2F138x92ZRO3YcfLcNOa+koXLf7T5IdiX1dl9AIhGZ/z5I+rUFHs5njZ4MsocZc4OK+t3pSoR
 dbUie6EIMwREDxGrETMTrUHHGV2n2ZVjN0/0x8F8xYr9PZsqEFlHP5zYx2ibod9ADoKb0GQ4QLC
 mz/v0/O3QmmKUxtfyU+CZsM1RWKyL03bycZIwHa4Kn7tJVdVY8jeERPRV+pJasSSkHxwCOezG5V
 n1ePBwf1fG8j9190iiyH1U4a5ZT6QM8i0wNfyUgMMuO06rY8IHpSdh+4xEz0mLQl0WAibsmLKTe
 gQ4KC2G84v+zMDioI0w==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIyMDExNiBTYWx0ZWRfX/54VOTbRzeas
 arNuFZqturAEE0BjvFjVKK5e0zpVY1hSHvqB7lxp3mHwhNSi5r57AU1X5IQT9UNd9kyqf39imAq
 8uJ57hDEUeUZ1RAnPZtU8TMbnQ6vNBc=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_07,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 bulkscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609220116
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_091238_533713_ABAFD82F 
X-CRM114-Status: GOOD (  14.41  )
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

On Mon, Sep 21, 2026 at 11:07:13AM +0530, Krishna Chaitanya Chundru wrote:
> Reuse the existing port resource arrays for Glymur register regions,
> power domains, and NOCSR resets instead of maintaining duplicate
> Glymur-specific lists.
> 
> Attach each PHY instance's power domains to the device created for that
> PHY. This ensures that the associated GDSCs are managed with the
> lifetime of the individual PHY device rather than the parent multiphy
> platform device.
> 
> Validate the clock-output-names property before using its count for
> allocation, and use a generic module description.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>

Reviewed-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

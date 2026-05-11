Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B24BFCD37AC
	for <linux-phy@archiver.kernel.org>; Mon, 11 May 2026 10:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UBD1kyMFkU899yB/GqbS1CBZoQlFergJMFezh4MlsDs=; b=tOCwoiY0FtHKku
	/C6OqDTJKY/6QPFU1U8FQuG+WHInxGEqOKrSN84LVPfBVmRrKlo4uDVvZUhaDcaUu9vp72XC5IWW5
	tE9VTv7VkavFzP9x6TtRNOCfjPIgiUU/Yl7u3fqOvZ2/NkAvBi0fT2fHnaCvbd39QxZHi7LAV9Vct
	jW+qf49oxaRl9Q9NOTsOJZCqHOOlGH/VwuUJW206ht4Rj1qSEK1xE05AJCkApEcD5FAke2jvHUUn8
	t42uJX5jvycxIxADp9MrABpPV42Vmr6Mc56bM8+1IXl1cKJU+tCs+i/a7UWSd5oEBn6lHZmVCk6Q9
	CssXglYSvaXYglCcRG8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMOHD-0000000DC4a-0MCI;
	Mon, 11 May 2026 10:54:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMOHA-0000000DC3c-2BSm
	for linux-phy@lists.infradead.org;
	Mon, 11 May 2026 10:54:17 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64B8I7m41850699
	for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 10:54:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TxocFjuN0LOAjgweyXXNhrSSGQgx5Dl/pI1l7dwYsLM=; b=Y8QJ4sdYNG0tl2UK
	FU5oRfpx5ApMhP51wQBqVYIbKTTM092/F3DjkkOuL2oHZIBJQZOurdFmp3QH/bFq
	MeiCPDLJm6SFj11z83N3FLu6bAtw+S7dT9IRRUvNd4ykev7mi2jZWCnq+WDBvPxa
	mFwYC62zKehdxRWWao/gN9Dj717eZ5yIl5iBk4Yz634tsXY3PYIGO4TLCC2s2XJk
	Id51kKYCKXPk2HSwRIWOcXC+6JRUCRWXPyMmGbzYuwLiLO716635fpa/RAKDfSOs
	RuwZmSlNpr2m+GDXRE05L37UMX0aY7l2b9TPy4HIaNG3xiK4F11o731NjZ7JQXHp
	uU8eFw==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e3bfvgjqt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 10:54:15 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-57524a62f0dso9251929e0c.0
        for <linux-phy@lists.infradead.org>; Mon, 11 May 2026 03:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1778496855; x=1779101655; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TxocFjuN0LOAjgweyXXNhrSSGQgx5Dl/pI1l7dwYsLM=;
        b=L4vY1Sj29xLxWo3ZoqJmCdwwQX21UgdbZPaoP1/Tmvf6NIli1mhXCtCP23QMRSawb+
         ekvHRh5uP74tgbJj5g2OOy3S7XH13g4moNnCesBZn15wsAn1rf41S6U5jY8ZiNrJM1Ka
         eMDw+SW7xfisqCqqC28Dvr7T6TtlZCI9ebaokZvwLAQouPIun4C7B5AHhp3HB9y9qXHw
         mNkFgaQ8N1mVYlv4swErz5rneSZb6I3ToFmw7ZV8WLVp1j27DEaWsNlKEjufVSBiMTCL
         nbcwO65N/umhfdguNtBpwEATOb3B2IwFwvH5/5nrTGWJZ34tOMiqE/Htrt6iI8ivJkYg
         pl3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778496855; x=1779101655;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TxocFjuN0LOAjgweyXXNhrSSGQgx5Dl/pI1l7dwYsLM=;
        b=JxhA9tDhKJ78QHWCYi8IbfeE16rcna40YYY25xW2O1L1hDieDdiKRLCKu5Jn6ytRVk
         w8Gp93hiIf0SxkKQgrjWXXps0eRZu7+MBuQcfYp6InAgaPYs+qkvaYojf1QxiaWuvnDJ
         wYXaUjF/UKKgDMVAcsJ5d3QC3tc+Bcv7TEp8MWYt7hvUTQbuJAh4bS9JP/vHXEqsxZMe
         Zrcxpfx/GaWZqMOxIl+7aydX2rlcUX96rTEZqviCmLWcy+BcuBtlThRpXa2UdGddoHvy
         84WI2SleBsFJkWhmU7hfE0834fHPgXlLu6lFBf9O0LaocGv9Dvlly3cCr6jervYytbWu
         8NdQ==
X-Forwarded-Encrypted: i=1; AFNElJ8hMyfCsa2n/ICozaJvbb42lch7pDXd85FVa706FAZXUL146ZDrSD6sMO14wWBMYP9FR/HhGIbK0b8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwT+mYMC6tU03YP8V13rJhNLWItBsB72yZp69zJbjkWQU9kbcFY
	BCVpmsrl3sVF8yEbmMovwdPPMelqO+b85J/4goXV3wyOAaqLumvOxalhUQqyEMCzFuI2Q5ZCmjd
	bvRkVmdzLq8wQ19nKbp9llwrOCWGKDRIbpk0pFokgkcKPUYmrhb+qBKDof3QC7BJAXcCS
X-Gm-Gg: Acq92OHLTPym7ssEe/ivuZL1aSjduoM+riphNpIVl7oW5isYVbwFqvVFGJrYdq1l2tS
	IcMG55rStGYGTeO73MT0fyg4iF9F1q3A9dFGfjGB8CY69cAW3FJOfbQmtZn77oR8oWLEkerjraC
	7I5/s11pW0FNDm9PTJ2QvPbQzhvBFUEc1u0txrkXzjRyQWec7XiratL8G/H6FhrtMbO83M12OvM
	K9o/gTk6RqBwxBRh22b+u0InVILrVOFOUE/m2X3i1wdcyDkwGMSIlxmY6cl6VSNwYT1d8mWuS/j
	h6fivZQWH0MkpmBoagurRw6nYQ7rIGq9hJ1tTXwsNKJKvZZGfiDBgqG1i5OdbR4kfs2rqdyDpOJ
	Q8x2fWeT8EATdswcbmllxynWpzzwQopHwAr/wxjMIBZ4xJVtvHQ==
X-Received: by 2002:a05:6102:5e98:b0:634:92c:bdcd with SMTP id ada2fe7eead31-634092cc426mr1122821137.1.1778496854835;
        Mon, 11 May 2026 03:54:14 -0700 (PDT)
X-Received: by 2002:a05:6102:5e98:b0:634:92c:bdcd with SMTP id ada2fe7eead31-634092cc426mr1122814137.1.1778496854416;
        Mon, 11 May 2026 03:54:14 -0700 (PDT)
Received: from brgl-qcom.home ([2a01:cb1d:dc:7e00:63bd:c2f9:cedb:aa32])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-bcca389b209sm299738866b.16.2026.05.11.03.54.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 03:54:13 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
To: Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>,
        Fu Wei <wefu@redhat.com>, Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
        Jisheng Zhang <jszhang@kernel.org>,
        Icenowy Zheng <zhengxingda@iscas.ac.cn>
Cc: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-riscv@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-usb@vger.kernel.org, Icenowy Zheng <uwu@icenowy.me>,
        Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>
Subject: Re: (subset) [PATCH 00/12] Add TH1520 USB support
Date: Mon, 11 May 2026 12:54:10 +0200
Message-ID: <177849684249.46127.338857521767724625.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
References: <20260507081710.4090814-1-zhengxingda@iscas.ac.cn>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=Fa4HAp+6 c=1 sm=1 tr=0 ts=6a01b557 cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=Ij283RjCuas_M8ejfCoA:9 a=QEXdDO2ut3YA:10
 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-GUID: JA-joWGAKkNVCd5B8yrKN6sGgQEm1pkt
X-Proofpoint-ORIG-GUID: JA-joWGAKkNVCd5B8yrKN6sGgQEm1pkt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTExMDEyMCBTYWx0ZWRfX5q6Mv6085w/9
 qpL0bS/WJBypO3PAcebMKNPCVOm3OuRHFB2vQG/ItqTwT/ABjoeSV+IXU12kNzwobtv6hH5qixd
 IBRSflm3/jVi3WLlUyt6lkqcPgLd8bgkWa6uLxS0hqjAxOW03uxh9TZOjK1EXinCrqEP45zwfXs
 VbnVOFusK7BNYITdjn6umRhKWZiryh7Tp4aXlw/8zzyf/94z9WvhieCvmK0wnEJnse/IHgpCuXY
 SaOmHxgDL9JOzQX0SAqZeiN3JWSOxX425jEEUjwuJ0HxikF8h+PksLsPmUMQUqv5EnEXMqIjiS1
 IShJ+X8hOF55bcIjx+VqbwZzUwlLoFKaZW+f/l+x+KGj//GU3Qsxy2hLHoAh/Qvi80PA8tzaLia
 Bt1dZN36m4cSBEAixZDNSlCfZOpZFTrCu+rEo43dtT9UUVqCGBc1NGdcsaWEK4f6sYQDJFPpKk/
 1bfFhy5AAP52h6s58DA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-11_03,2026-05-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 suspectscore=0 phishscore=0 clxscore=1011
 malwarescore=0 spamscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2605110120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_035416_585026_66947483 
X-CRM114-Status: GOOD (  13.29  )
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


On Thu, 07 May 2026 16:16:58 +0800, Icenowy Zheng wrote:
> This patchset adds support for T-Head TH1520's USB functionality, and
> enabled it on the Lichee Pi 4A board.
> 
> The first 3 patches add support for the MISC subsystem clock
> contrtoller, which contains some USB clocks.
> 
> The next 2 patches add support for the USB PHY of T-Head TH1520, which
> is a wrapped Synopsys USB3.0 FemtoPHY with a little integration quirk;
> the controller itself is a properly configured DWC3 controller with sane
> default register values set.
> 
> [...]

Applied, thanks!

[07/12] dt-bindings: gpio: dwapb: allow GPIO hogs
        https://git.kernel.org/brgl/c/f76c8be440e53465a306c95a7d50ca8675252f82

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

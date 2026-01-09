Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFDA9D16816
	for <linux-phy@archiver.kernel.org>; Fri,  9 Jan 2026 11:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+CShjfOzoxH3N0RN0oR7vNBY15ZxCNJL10oq3DoR06U=; b=SLTOTIavQ03dK+
	KndCIA0u3EHsQenn+qYKBJICOvx9nP0ggd1OXcvnpMSm2UEDZg8Taj/EjtFFs8OBZ22YIidZ2Xn/J
	bpK4qfH248/ZWNcbrf/XquWBwehzuQCWADgJwupfsDGle+pO1eEmEkaOePgXbbLFtGCHEZ6YmQxGY
	vtgDIR7OW1gZ58JYSvTpJtBKi3ZBT3iYH1jPmw3oPYAI1eCffzxhbOaRGfGsz8WREITR0wqa4rk4P
	Cs9KFwUcb2xqknhaUAIxmzsO567hfHRihgLAHu2y9kCUPgujcHcYyEg5p5oqqSx8/AEKKpo3CmzhB
	BVH/4Lkqq2ijyToqLM2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veAe2-00000002DML-1Htg;
	Fri, 09 Jan 2026 11:27:06 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veAdz-00000002DLm-2tOQ
	for linux-phy@lists.infradead.org;
	Fri, 09 Jan 2026 11:27:04 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60975nmi1953455
	for <linux-phy@lists.infradead.org>; Fri, 9 Jan 2026 11:27:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A+ZR4dnvbJ+y6yDGs9SuvRFM7nDX8K8jRqdd+yeqBQA=; b=HdSQBMliFfXzEhWK
	DrKYLft5Kx49kkyc3vdphhibYVKgBOTjXXsgOeOPRYZttSCs4ztXH63EzM7YnmuT
	oBxed6Q39XU8TXmzjoZ4SMDFMzfDEAssEoBPk0xfy5JfRU0wRj0ApwGnrsBU6tA3
	Ww1cKyCbOQjWHolakMZcvxTVqFd9JaMNJqA8Kx6DUt/ORjOu/yTgBVK/a+M591do
	QEByIte9zV6Fy7btrXePR7O3FsoigSYLaly/gzF/wJcjoKlSw4WPpSu1OtE7FeOo
	7ipFIUT8cT5926eVt3OLtZNtroLFAKqxfY8xwo4YTj0bKJn+ock8W1zx8oACHqTA
	uLKuSw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjfdab4hy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 11:27:02 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b9f3eaae4bso95716185a.3
        for <linux-phy@lists.infradead.org>; Fri, 09 Jan 2026 03:27:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767958021; x=1768562821; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A+ZR4dnvbJ+y6yDGs9SuvRFM7nDX8K8jRqdd+yeqBQA=;
        b=jFOp7SIyHcK/lLiiJBWhYNcHavC4IiUZ1RbkyBJ6TKW+xGDMDZcmO30eWKvzK8eaI/
         aABwAQewcCETI345BArd/+lhWkTADJjHpSTyuaxE129oRSsrDK2dFMZCiMi1wz9DDokG
         6mlWOYZr5LnSLvMkKFrf+Eu4xLNl/ljPhut7HnmXKttSpq3JqJCzx86e8bAOK/yNtLBz
         fy0w8NoN7/368RDqArZSbnPzXt5wcVk/bK6Eq/1nnoWwE1J8uyVicKG7JonRj0fz9sEE
         1pn3mLuwrY+C76uzXVawVD7OvxkvMhDBTtPIDCLBjM+nDpa6rWPobjp4cXgOEcVzIdWC
         BwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767958021; x=1768562821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A+ZR4dnvbJ+y6yDGs9SuvRFM7nDX8K8jRqdd+yeqBQA=;
        b=tB+F4e5GAL0gyfZZhy82GZAwMs+4lMRBEZwc+kwjZaYioDJfyx58D5wV3fh2n74iBo
         6ZqzS9+AmThniOza95bRKirsmRLe4ewZBjcjI7UnvWp1G0EG82/WGsSj24MBKaVUEDos
         CCfutS6LrMADoxivEesLSIug3f9vbmc2SKGjJlxUuRXbUaFSSyf9Dhbpqfyzm8HJfb0d
         qUz89cerTYaxtMHjct2JzohUeYBmL58R3SR8Pep66nLC85ZnGFMPAoXdee5WC2l57pU/
         JiVC+M9mpaxm6t/h9L9lYA+zUplUDfAGe7k/QT6Vxv8JRw6AgOK/GbtBVz/O34Zi/pFl
         rmcw==
X-Forwarded-Encrypted: i=1; AJvYcCUcKSeMO3myhsyJCNCbXg+j+nSBLY8JlPqCXd4AC5ErZomU9HHqZSoTDeUL1iVgwbrZRWi61cQ9/0w=@lists.infradead.org
X-Gm-Message-State: AOJu0YybBUjo/Rl+9RMh39tcE5xQJu9gdr+X6+LZ0cvUD4bcZfh9g7wB
	fQ1mPjQ/9NkNyvEjEgNOlDrXNJbdmejKMN+zUSVS3EeTp3ThPgqEzASsSjPF8efydm33GLOjYVv
	nw52JQxfWuuW9PI/gtAGmUC8CCJ2XuzU5JEW1ZIUfyx8/yZlOqT/JTUQKEQ3cQWSDfDf3
X-Gm-Gg: AY/fxX4PNPIBgZM0uNYjojF2LK3iBXg1K1G1XaG0QwdPb9k+a/jDKA/BoiL4JBz41fj
	Z9luKgWUrdV0NR8J5bpvLbJOWkPZwkiq26kIbnRHD/JXayt6DyK9DZXk0vi8J8RV9dx7MUgWgQc
	Wc/OnAD0jCTcPILEg78CMsEoF1jZedmQQJ6hIxQH7oC3fNJB7jIIEUaBglKkTaYNfzl+0lWamay
	YZU+jX7IkOql2FufbjaRQ/M6Uq8n1q2YKKxxYAAgEe7oqz3/wGIxSH+wz/zP/u9LxZlzSSdEEEh
	downmSXp452TnDmsq9D0zvP+vCMEQUJMWr8OSU/1uh2e2X8UTrhRdrKz56cCQM/KvVJYHz/Hb1H
	NE2za1bgg6EsKLYDZBQ0BVsDbqDapD0l2dtpPGFKjm+JLvzITi0ZDhRRaxNlQYM+Jfas=
X-Received: by 2002:a05:622a:282:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4ffb4a3ff5cmr101434071cf.8.1767958021490;
        Fri, 09 Jan 2026 03:27:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGxyStr9/yTwoYO2M3nfEO3OzvPIIrO41uVIbzWmtnhKMWOi1N1EN+6soyrPRdmLiLr9Vf4Qw==
X-Received: by 2002:a05:622a:282:b0:4ed:b7f0:c76e with SMTP id d75a77b69052e-4ffb4a3ff5cmr101433901cf.8.1767958020984;
        Fri, 09 Jan 2026 03:27:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm9947983a12.33.2026.01.09.03.26.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 03:27:00 -0800 (PST)
Message-ID: <c6017022-c96e-4095-b85d-88784a44c13a@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 12:26:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] phy: qcom: qmp-usbc: Fix possible NULL-deref on early
 runtime suspend
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, vkoul@kernel.org,
        kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org
References: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
 <20260108154944.211886-3-loic.poulain@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260108154944.211886-3-loic.poulain@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Ue1ciaSN c=1 sm=1 tr=0 ts=6960e606 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JrZo24E52nylh-zEmEsA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: Uv0OFSz4ipLGHFLinLqlReQ70a2hw-kD
X-Proofpoint-GUID: Uv0OFSz4ipLGHFLinLqlReQ70a2hw-kD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDA4NCBTYWx0ZWRfX9A8LU2sHSD29
 jpfp32Bd7vR4HTKhHHqwmg/If4cNaymYP667pTbFCkPDt26SyPTMAUOCag9P/anPgJYt9E88eVu
 Rm6QIxBHwxsW5D7H7tcWhcl45IvPPkYGv+biJodUGsg5MB8KL9M7KlpWVp1kxb7qkg5ssDxoLfk
 zD0z6qDpZzywjdpkBNycf2ecFr4RoqPOSCvCiDVniAkaJqr3Iyn3i1sdDXbRpi8b8gpNGD6rUcT
 CpLt/e+oG67uH9TYNAFsKqwNY31KJH6AccPxLv8sce5Q6nWUgFlwcl6Z37BRjKz+XouNNYX15Su
 2qPfc/t4cwdULj+bpFO4iE//eCWxXLVmuFR1e7J+9vo6wigM515SSNfj3CMfwwVucXWyykZbgA8
 r48tuZx96cwCtzjJt8chstAG/girjisBoMDV5aYsxygkdyFnRdLwpusi+stkJGyvSnz8YTLFUFF
 UVVemAWNO2/kyVt4Akg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601090084
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_032703_877636_C6B79489 
X-CRM114-Status: GOOD (  18.44  )
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

On 1/8/26 4:49 PM, Loic Poulain wrote:
> There is a small window where the runtime suspend callback may run
> after pm_runtime_enable() and before pm_runtime_forbid(). In this
> case, a crash occurs because runtime suspend/resume dereferences
> qmp->phy pointer, which is not yet initialized:
>     `if (!qmp->phy->init_count) {`
> 
> Use qmp->usb_init_count instead of qmp->phy->init_count to avoid
> depending on the possibly uninitialized phy pointer.
> 
> Also reorder pm_runtime_enable() and pm_runtime_forbid() to prevent
> the window where an unnecessary runtime suspend can occur.
> 
> Fixes: 19281571a4d5 ("phy: qcom: qmp-usb: split USB-C PHY driver")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index 5e7fcb26744a..05717ca85c5b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -690,7 +690,7 @@ static int __maybe_unused qmp_usbc_runtime_suspend(struct device *dev)
>  
>  	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
>  
> -	if (!qmp->phy->init_count) {
> +	if (!qmp->usb_init_count) {
>  		dev_vdbg(dev, "PHY not initialized, bailing out\n");

FWIW this effectively says "if in DP mode, the PHY can't runtime suspend"
which I'm not sure is what should happen.

In USB3 mode, there's definitely a register in PCS_USB to put it into
"autonomous mode", where I believe all the hw does it listen for link
sleep (U3 in USB3 spec) exit requests

In DP, I suppose we can't just yank the power until the controller
decides to suspend the link, at which point we just power off the PHY..
would that be right, Dmitry?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

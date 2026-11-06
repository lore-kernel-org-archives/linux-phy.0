Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C90606A33E
	for <linux-phy@archiver.kernel.org>; Fri,  6 Nov 2026 15:06:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aH80roxW;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=gWXEm7MN;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=EQl4hXyZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BiQca3D2m1/1AA3/6JZ+lq9fA/UKePkxLjhHg7recR0=; b=aH80roxWqiuFRMshyrjWakXJln
	k3d5HrjHu6eX1n/46/bMCZF82fkWKmd6lJOz7d0YX49fYamLgHc8FDuQF3KNofpo47V45/da7KPuI
	bwKB7dXYcDPqjkkxM80UhmAdH+cWrKAiWmHgOxlQ+6LhGnE7+5t/dMcy93+YVWaCmIMLBQ03hIqTP
	cbWGVX7oVgtI9luwwYoV8mj168NveJH1Kx1arwBOZzja4d61NPZeVXUr8QjeYTZDWko0VP1cAYJsE
	XLrWaRIKxiErVigFVNy5dtu1AiniWfac9KcAwNIpSo2Pf0x9dxxQ8bkBFc8B+a6bkaGAipgfldIhz
	1gKpA9wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLWo-0000000CmQd-2bYg;
	Fri, 06 Nov 2026 15:06:54 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPLWm-0000000CmPk-29cd
	for linux-phy@lists.infradead.org;
	Fri, 06 Nov 2026 15:06:53 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A6F0CHb1039845
	for <linux-phy@lists.infradead.org>; Fri, 6 Nov 2026 15:06:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L+gz2J/ZGi177mXkyUJST89Pwyo852hzkeYwHBsRBvY=; b=gWXEm7MNK71AuT+y
	vQxWIM7285UIISnV9IKcJDh/Gl/Ms+NkVZALgXzr0H371+obyPYjJxoaPerlqRfn
	xHTS2kyPoCAz0CIkCXDxvKuqcIUAU6nQdCZ4CUaLq9hHZ0JAUytYNtGKg+ldgKjP
	Lqxvf3nKcHBBVbYNTyqxX64DkSuLgTh/DSzL7njpTbyTZurSxLfe7D+I9H/zVYLR
	BCm3zfY43D0BjvR/EmeVY/BLAAJSqqw7xesgFio00fmcTZoTInts8/bdjy7sgTHr
	Ju9HCLJwcKr7dfT5wlonPKXku2dnQrwz2DgIIQorWGHVpA//hIbVcpp3WHc0pjnn
	7HvZVw==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p9ubdd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 15:06:52 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-7d2b1f60da7so4895137.0
        for <linux-phy@lists.infradead.org>; Fri, 06 Nov 2026 07:06:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793977611; x=1794582411; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L+gz2J/ZGi177mXkyUJST89Pwyo852hzkeYwHBsRBvY=;
        b=EQl4hXyZpRtFdaUrwI2JsKJvRCkoBFuMQNXnTdokX8apTqxqHrVdCDaz2n2VJ71vRO
         D9vi/s4+VTbGuscrfrz2nRmJwZ5P0BzoFyg6dIG3Wmc/paIg+rG9UAjUTjpCWeAeyTmZ
         sfDIlFzK+XybNzPOS0RwAKO+wRvMbZc4mHEe51ikk/yyTDc6y2BjmHelJre3u5zdt/3K
         3FbY+RJ8BzMedLfQ9O8wkrt2dJrb3b+gfORstMGiBaLe3NFGV1iG5jQbZq0jTuVcSRa0
         5q1FPPwPiqP8PkuDfdiGpOVIHXl0jFTVglTLeAXLfBEUpyVq8ejj/X/SEzljI1u/YLpf
         OGfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793977611; x=1794582411;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=L+gz2J/ZGi177mXkyUJST89Pwyo852hzkeYwHBsRBvY=;
        b=f3yo83dqOeGX74D5rpGPJiS/kWL914jWAupBO+nfVcdGASLqECWXKMJldLmLjxPtWJ
         mkoDquJRvDA6oaLux4YgbJ5+r1nQJKHs1B6+a69ierLhWahQclE24SxYzYuiMzKCaDUB
         YFTNZSfaFK/MN67tB8XHGNtO+/pdvY/5w5iTZFIxZhVe0iUr88NjpIr6Rn6/NsGB6r7s
         0M/aJvrrhb7Uaq/LsBcAXFy1x5yFflFZ/R5wMcxE5qKsZIsH9pfwLNokoaxryAxSuf7v
         kn0JsSHv5pPmeQ4KnaQ12GGoSvp68wUOkmm1FMwytwe36cfIugp5qkgD87K3nWQBv+5E
         rHlg==
X-Forwarded-Encrypted: i=1; AKwUvBycQmFKVd5Aqr0KM8VW0oy5oRF7p9Hq5NY/8gL/6ZNXb/UpW28C6W5xVKx7bJPiHdZs298HokHlCFg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+UYcd6EM2L0jHo7xabiFTqiECU5W1rwxsjZ9mlogdaDr8Zi5z2
	dAIfQE+9ZjFh0ErTg7tAD8QvRINF41/Ykm/9/DhcTl1eni/CoPDdIh+dgbQHdP/MfxAe3Bzzz2p
	4NSZNNKSuMjM1DIkLJuECnFZ/WOIrWgQnUvlD+hS3y4+saAn0kXRhM2yLiVVrfY6pumXi
X-Gm-Gg: AYBFou3Va4nq3tRs1BFfxDMMHyDXpkVq0zI+cJAcJRQ8BxxHLyV0n9vP8Fg2/EYQKFa
	yjVRp6tPzkROaLqNfhmxIqZwHS+smY/SQloxaJfPJyP5KrgMjoyXw0nZnXeKvl2OPhKl03OYmNh
	He1u4PdaVLO2/dc+QxI/6mv/6jtALyi6nrDJUuxSkAjqXEs/04WdteHwGmBLHn+3a1sratHG+w4
	o3v+y1nNHWsDzTnI1Xsmy7cUTJzsLtGPAT2iM/jWtaEQJFz82EscdInivW7/pgF2BjX/SmT1Bs5
	e7EdJCqszJfoLyMfnNSP9UQkefrxjCVlE+Mb3of1Nm05VH20hHREU3M0ReP8dBIDa7kD8/2o9t+
	ZtiP2F+40TQTA8e414yEpj8UP1vAGofrc44FpzMAUxjT1Mm6EVIF+8ccxEh0FmkwgQs1sfg==
X-Received: by 2002:a05:6102:3c9a:b0:7b4:f1cd:80dd with SMTP id ada2fe7eead31-7d2a12f2e4emr1247555137.1.1793977610854;
        Fri, 06 Nov 2026 07:06:50 -0800 (PST)
X-Received: by 2002:a05:6102:3c9a:b0:7b4:f1cd:80dd with SMTP id ada2fe7eead31-7d2a12f2e4emr1247498137.1.1793977610311;
        Fri, 06 Nov 2026 07:06:50 -0800 (PST)
Received: from [192.168.226.72] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6b664ad17aasm785720a12.9.2026.11.06.07.06.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2026 07:06:49 -0800 (PST)
Message-ID: <62e5c1f7-72fc-462a-80e3-bc26b92b1636@oss.qualcomm.com>
Date: Fri, 6 Nov 2026 16:06:47 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] phy: qcom-qusb2: Do not request reset by index
To: Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20261106-reset-deindex-phy-v1-0-6a9c9f428be8@pengutronix.de>
 <20261106-reset-deindex-phy-v1-1-6a9c9f428be8@pengutronix.de>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20261106-reset-deindex-phy-v1-1-6a9c9f428be8@pengutronix.de>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA2MDA1OSBTYWx0ZWRfX39Gf6ictZykE
 BzVF8puCOPwbp5Nj9EiDMvk4XQR1cb/bg6euPlTzNOhuuymDtJx9nDEsnB72a/nAIdTTznxt6uG
 DARJzpTNsXoMnum/d0wajE7Zl3oGQco=
X-Proofpoint-GUID: -nNclYPVSWa6ZNLtFEQLZ1F7jE5YNqck
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA2MDA1OSBTYWx0ZWRfX6vU90tu+ygfB
 khi+Mhd2Mv6xUqEwTPoqPZ4v9xo+o1BmWKsA5g7IPVYFfxz0dtPNlAE31NPGMEWc8Rqtwgdgoxk
 FMV87VQwCeF8ROFEXm74c0x8CvL8VadGj4hyO4MdfwHNWuqAOdOgBiikBtHIIiNUUiQbdNJvJL2
 B4Qcp3OOFIcmZr6P7pe6MGH1+Ntz/alGRQvCQ0XT/uma04JvGQuQBNEbQ4xyhPIB9Zp3oNN+xu3
 gKt7IafVuGO4EgLvuPYX1UVP5N+WBQxhYhxWra84K4VWLzWcb8vD6I8h5pgA+sq2B3oQ8Sou86t
 0Gq5VCkEjp+pMWZ7oyPMq7zKwnPp/h2LnVbCqepu95F/SOU/MnzQVu9L6PAXnydADwFKLmWp+BR
 77vfMQoNnxZUbKAua5S+xCtVMt9pm9gxUvIJBHGQ7OvwLpBvpGl6JFpFfhS2KrDx8YmxGXENXsy
 N+664KX2In1J29kKYVA==
X-Proofpoint-ORIG-GUID: -nNclYPVSWa6ZNLtFEQLZ1F7jE5YNqck
X-Authority-Analysis: v=2.4 cv=ZIZCCn7b c=1 sm=1 tr=0 ts=6aeded0c cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=IWuRp9V-5v9cUcI_31kA:9 a=QEXdDO2ut3YA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-06_05,2026-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 bulkscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611060059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_070652_561349_1BF61BD2 
X-CRM114-Status: UNSURE (   8.86  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 11/6/26 4:01 PM, Philipp Zabel wrote:
> There is no need to request a single reset by index.
> Use devm_reset_control_get_exclusive() to request the first and only
> reset.
> 
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

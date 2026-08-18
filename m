Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D49EDC5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 09:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3K3sx5BR1oh96p9USC7DRMvG8Keolcmd7QA4mGNpS8=; b=HceP70N3CtMiFC
	T4Rwanl+vhwFEyVP7YwscLtxaTLyLQOlCFndzDJ+qqJaKCrdKlgeqq+GaZMBPPgcOOpBYLnsZksEE
	/XTncCqf33K7/W5wJg4KRyYOzxe3jeS7KynOQqw3CpRuoeV7F89h4k0b0PZltcZJ3fvG6sQW0oGFd
	B02WPgZT83Pke6vbF+5tS1EV1qEOL9tYUkOThCTS9DI++G73JNMFIhD/HkZ6F8zNyHh5lXvcvlkoY
	uAvAdFWki67tvVQGZEX8CfkPUiyySe7tg6TCasd3A9bVuz5azcurpeKaBaJbV8PNEF4Yw4GM/WP8X
	bYvLXKMh5ZOiRwrawR0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFhc-00000007YzL-23fT;
	Tue, 18 Aug 2026 09:01:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwFhZ-00000007Yz0-2Z92
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 09:01:46 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BWnR325733
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:01:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gXMj4xvl/6fCMpk0KIcN9SXI5nmvjMbOnCTA1HJw5ek=; b=PKqlEk2FgcfVN0Xd
	a4fAFtQj0UG6gEJr2z2FrYgd4p9ZqnyMA1sAtotnsyCi5DxyAInm114J+T2bOaiH
	D58ck3WadCjeZba8B7+XC9lMybX0W2OePItQ9Ui+Vjvf7DbzSgMsns6PvIpjBEL4
	ocYAyrGn9kwqshsdocA/SHWI5JCCNztG+xOdRxTXqokmin62crPssTU/8Br9KC3c
	votDhPP4ytYX3dPTRUAOZqJA+S2HF0oCs4KZeetKmn/9NnBmYBWHOFt1Wyf6TtuQ
	caa8CsCXgnNuOgflS7FV5rbwXmZPFs+muLMY30iSLqIXKfxmg8qjgrPWABDNorgR
	Bnp0lg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4eqtsgsy-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:01:44 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-934a8cd3a8bso44490185a.3
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 02:01:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787043704; x=1787648504; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gXMj4xvl/6fCMpk0KIcN9SXI5nmvjMbOnCTA1HJw5ek=;
        b=QmQF4S0Y8vPUgiastztotYEnxZFWAqWj7oZEp9FUSnXLJbN4UUCLX1tkE1TUrPNrLh
         p7ELWwtP8kThg1ybjjqpFFluSo1Rvibbc//Me6KMGA/RT4YaAUcpGYmeXUdCLf1ydF6A
         cvuvUKL+1aj8xeRe6j4KLY4zBJ1ZfS2oaCcl8HOuacOGtja2/55r+tCiXY9Yi/CoGZT0
         Lwg80yEA8LE2VC2Tnh5G/IGjg2GSg/NVk2sDjgFdUCfY+BbpeVk2QM/41dVR/VA/LdzU
         IXUI/I5qE+ZA+pysPMN26+/j6FeFj3n2r/C59+AaCluvysrIaXSbrvCRvUMIn7rdC3kz
         DIsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787043704; x=1787648504;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gXMj4xvl/6fCMpk0KIcN9SXI5nmvjMbOnCTA1HJw5ek=;
        b=nnLQC12/ZbzYBfy57LS/KYFU4jMP4kqwMiQhuAEgp6J+Z+InTbJ/JM1AZABf5B5VvR
         sKgw2n9iF9WQANDUuNmFBLMOs5Ua7uwi7D0IYgNyKJet8EUbO4I8gmIZjJNTZsS5Yn76
         P1sfn+RtHXH9lvKve/WWCzU1ePYM4VGaZ482UzNRj/PFDkCgI4tRBcgl4GFGlPzBnIzv
         TBShGZqKC+ePx1DlBHyA1fj3TyoUc8kv3guACxbQEV/8J7msmyFWAcaxQa0mrFCzAQHu
         SOOUeGNHYvbJv5645lvh2zoP1t2fzGuer9Qim7MpCZ47c/T8hvYtTf/K6x+jQYiP/vSR
         fP2w==
X-Forwarded-Encrypted: i=1; AHgh+RphTAetoSnMIZSQHe9THnRpZitglnlWm8QTqfp7GrWRPDW2wVu8rJ69FQz2reQA804bHI0Jwnm8hL0=@lists.infradead.org
X-Gm-Message-State: AOJu0YxBeRsJxocL49h/BDARd00P/Ij8VKffj4u8PM0wLkHM4Bi2EJn4
	T4cv57HKwWu3DHmifyoLDv034nKGnC88vWPzOlzxoE4KB33B3YxHehzZnGqKGOQcKQz3LaPhx6v
	YVVv2j9s8SeBauCnj0ZtmSDOm7+oFCFPUsl7laNxlcXA9fYHGGNPhvVqFa8qFqy7y72RK
X-Gm-Gg: AR+sD111qbxB+Y3DfqmPfofxz7HKhgkLIFdNv9T0afHUtsjh6Nidjuvz42fGUY1e38a
	dX91FS7tM+wcgq1wh/5oKXKSoWo+qhrk3OTxJfHC+gmv4mYyaHvl6mSKXaOTlOMkz7H6PgpwpJR
	NgU2JfHBv6ZmYLTquZ0CV+oakYyk6kKBxJQE6HIRvttVoiEJxkzTG6WbaVzXMg7mCKL8ai5TuBF
	r6jedQdwZI6ttSmYXVXGZMJudcVPTSbqSCwSpr/MgiKklQW2j4Ax6GlbY5lcURPTiLwlWzSUGMP
	9cYVUH2ZR8zcEXLO5YeSZuGbJurF7K5hLk5tERRctAbz8+3GHKR+G5v+zSlNOfDIE0b0tKXeHOQ
	I2VV6GSYmIRGIna6K6vAZP2pp
X-Received: by 2002:a05:620a:6910:b0:936:2f59:dfe4 with SMTP id af79cd13be357-936d1edd4fdmr2347611985a.0.1787043703582;
        Tue, 18 Aug 2026 02:01:43 -0700 (PDT)
X-Received: by 2002:a05:620a:6910:b0:936:2f59:dfe4 with SMTP id af79cd13be357-936d1edd4fdmr2347606585a.0.1787043703156;
        Tue, 18 Aug 2026 02:01:43 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a3d8596d4csm1471059a12.22.2026.08.18.02.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 02:01:40 -0700 (PDT)
Message-ID: <ad484af6-9f38-44a5-9f01-8c8bcdb6fa0b@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 11:01:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] phy: qcom-ipq806x-usb: support the MSM8974 SS PHY
 parameters
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross
 <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
 <20260810-msm8974-usb3-v1-8-1a47e1185524@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-8-1a47e1185524@oss.qualcomm.com>
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA2NiBTYWx0ZWRfX6jPag5K682D5
 LlubgFxx/OyDYwaX32lr1IhGgSmChamE/B8WuEGvk8+ODnmLzn8j9NLnY15A9CHkUjgF7eMzmdL
 WoMa4hDAcMMGE68nHZmXaqP4Kqc6y+g=
X-Proofpoint-ORIG-GUID: dVaBgIdVE8LDR4VaxvB7kfE3sPI8RwPf
X-Authority-Analysis: v=2.4 cv=UfFhjqSN c=1 sm=1 tr=0 ts=6a841f78 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=EUspDBNiAAAA:8 a=ZJdRkJQ8ho7aap0qdPwA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: dVaBgIdVE8LDR4VaxvB7kfE3sPI8RwPf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA2NiBTYWx0ZWRfX1+wGBfZjkW+x
 WbeXJQOtfh93x0YNeiv1CcOW7kI1skFgU7too8QIrELARyQNk7ydOFpOkqUc4b5XfjlCss5kKID
 H3JuQ+P7xcKZBMMJyLj8lalnaD6BTav1SbP+2sqBZCNZCT1HjvvEGuI0dxyRpjMyhl92722wyWv
 rsbjaIdeQG5O4gesW4UQGNuMkYCEBR2aqndac13ocRcbd4kffNDTHwWvRUCzXcQvSlAS3KQHcYW
 l5MbnHYRZ6k8hY0oU7JtKOC8bfAtuxs4ecQ/ozNGP3Ht3UJW9h0odfhDfWsmufxMwy6V76Xur4X
 /w/lCd9aUnY9lvo+Qwm5mgL8mASVZBnJQgZEWeKDMa21J6sJSBDJVJ0wcL5gz0CmMYJtmMIqQdL
 Wi3rDTklfE4VIVoldUcTfnE5UV7O40tnXESBKEqrjQF0RGAUrmPx7NcPKOs3ygmjXtuyGIB+TbX
 jTcc2g1If5ViQJZCxlw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0 adultscore=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180066
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_020145_794940_6B40B477 
X-CRM114-Status: UNSURE (   9.97  )
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

On 8/10/26 1:42 PM, Dmitry Baryshkov wrote:
> For the MSM8974 SS PHY instance the vendor kernels program analog
> parameters different from those used for IPQ806x.  With the IPQ806x
> values the masked write-readback of PHY_PARAM_CTRL1 fails and the lane
> runs with wrong launch amplitudes.
> 
> Add platform data for the MSM8974 compatible.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

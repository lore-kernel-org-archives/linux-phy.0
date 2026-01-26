Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51013CF65E5
	for <linux-phy@archiver.kernel.org>; Mon, 26 Jan 2026 12:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Axt2gFq0QGz10CABsaDdog7xPgV8lFvdCC1z0TeqJIA=; b=E4j1cGyzr4K+4H
	1K3jLJNVAn3mjp1nJvLfvz/u4dWwTPPrn63Psmt9xZVDj5zuTlFfaVCxsQKeh/zQ7IK3bDMPTiE9q
	paIRW83BfJ1Zu7uvgdlkqyXOHMcJli+4i2M7T20TRw2g+BC07FZO+by6RgVowjWZr477iwNXC+4sO
	xk/6cNjyRqlsFmvm7MlCh722pnF0Xr2PVMdIFSUBez/ckLYi8fpRas4nwufMNFa/tet1lxHyMFET3
	XFUB2WWqpDaDn1rusx5Ml38kZZWbWjFqeF5+3t5MwVpveZS1o2Gj8ju7mOYBC07/nJjWnn1e6xcQh
	rkHond1fvBTP4lo/96jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLIz-0000000CU1X-452y;
	Mon, 26 Jan 2026 12:02:53 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkLIx-0000000CU1D-3oiQ
	for linux-phy@lists.infradead.org;
	Mon, 26 Jan 2026 12:02:53 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60Q9TKpp708495
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:02:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wVnwxuOZaOHta0A75QJAogWz
	m5E0vtekDQ75FA4zYNs=; b=BDAlDbq4Q0QNQ6J9r33xeFWamKdRNfIctUo1ASr6
	SvQAjR5vnMPmXzCztlwp24lFhDcfkGJJJm2pBo5yo/XzrkkgQm7kWw/G7WrTqmOn
	j5RkGXa/SvnsLeYPJqHGZFhRdDsfXwWWFWdFsC6PLDdWC13u0jwNNfm+onakiBqM
	kDVKehSyTmig13sY8HSiPR0e3mymMJ8jabPPI/9x8e+5B7HzdMvkbP00tCqb5+z7
	Dkyy9SyrnF802nxHHoktCXugrCcGcXJF++xgSpqi4vmF82rO/lQUopuentLcPMBI
	91Y39wu/eHSe4AKxfyx9eYcogv/7BlEjZdWkizNo6kuCGw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bvq9tvd21-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 12:02:50 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52f89b415so534156885a.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Jan 2026 04:02:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769428969; x=1770033769; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wVnwxuOZaOHta0A75QJAogWzm5E0vtekDQ75FA4zYNs=;
        b=UpHV4FXMYshLvbovaUE88ceUU3kUDveRopiJWPrZNLsojrr3VDFSjQVnhJOUDKQbZR
         INg0+tEd//3Yz5vRqPvbYe/tGvMey5u04lOPvT3Qd+6J92PCUctria0JeBM5isIIFdAD
         0DwLLHP3beHOdAX0jw2XOAdJGqZGmkKgucWLQKa9Fd3psY5m68sQrXx0/gOrWekUoYBY
         yNEB/eo8o/CCsXOE4J1lxgdXoa40/GRenemAyyLZtGkZDVuE06bvQm3qF4htY0OzAmHO
         Z6WMxmvjgYvvBufRE8IaWKh1NGzhPq5tMUDpVP3KyKv99FixLQ0bW+KcIbBtogPoMeJ7
         1Wgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769428969; x=1770033769;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wVnwxuOZaOHta0A75QJAogWzm5E0vtekDQ75FA4zYNs=;
        b=TRUr5rn9VTWhzNZSYV8PewUOttxFG5uVEg7qsFetWmt2jnAFZDtwFtEzfhNIoEPRDo
         vDloWTVRJSPaOMiEvH81KQLqEO1DAK1mA/Y8PLFkRHYq7loieSNuI4SyrpXIWkvCEmv9
         ZuAMqGojiCPhJiNXWEG7nyoAUk7VL5J2HZ2v4f/jlayIRNTjZB+uklDkeFHZ2UwGFZcc
         C3UMA/kmwPj8o4jaWNpL6uIIIGulISJ7Rtk90d9KoPbSpiTW4lJqGoQv1il75YLmlJEV
         ZLu8WTOd6jjtQj93y/XpVtOnXYWjiWHhQVqkRvLn3brjCxYFnxfl7nW2t3DInuUru+Wg
         69/w==
X-Forwarded-Encrypted: i=1; AJvYcCWEeACnNiHBvZ8Fb9N2S0ymS0/rMNA9lm3c5+idAWllVoXmREPzOOp0cR5tABPCqE+m5HFDMIot7dc=@lists.infradead.org
X-Gm-Message-State: AOJu0YwpY37rjJrVy+JH/zYd/LcJB5PVnGt/79FgND7TgIxTjzZPbNBx
	yM2k6/eB1SRek7jWBqIFrMykRXAyRG+cmA4YZpY6OFB7vQA9goV9yQlVs65whDHMuSJO8LROzUN
	tjOK3XKtphPAc8TQh8zOFBU5LIykQJ/dRhrBN+Ppx3RN1FWMy+fJCISBaL1+nUVBCJSC4h5KHX6
	dt
X-Gm-Gg: AZuq6aLznfaFxII32DrPK70cSVE2UFs7L0stjJHhyphNYjXKwB9eYdZKQFPoLyDiSdJ
	0+FRGUJM4mrq8l9s7G8hJLcO86HW450oplD4EhbLSOQ3N5qGvaAD897Wm3eOfwR0922dm8VQiYl
	CpcrPWwaKDPY/auZP3mW9Rk81Mw5Xubh92MNBJWSXAvF+cTupV/L8lrgI+QDdNuIaq1CC5KxDyz
	d+W8+UFrVzQ7NPnoGXzv99CaLnrNLSrAutNJtBV99ngj5OK6BecjKzcji27M+jndFtBqD3TCHR4
	T+JQ0dLOLrIk1vYPTw54aIGlmBEgOsvHSproC6XhdYNBwXmWdZuZadSaPh7IgAX/JU9eItiwIlQ
	/7xImyTNWFCjqYHhAg86tS0qY
X-Received: by 2002:a05:620a:450f:b0:8c6:f76e:c6f1 with SMTP id af79cd13be357-8c6f9590c67mr445918685a.26.1769428969393;
        Mon, 26 Jan 2026 04:02:49 -0800 (PST)
X-Received: by 2002:a05:620a:450f:b0:8c6:f76e:c6f1 with SMTP id af79cd13be357-8c6f9590c67mr445913285a.26.1769428968855;
        Mon, 26 Jan 2026 04:02:48 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.162.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8a5c32sm328942655e9.11.2026.01.26.04.02.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 04:02:48 -0800 (PST)
Date: Mon, 26 Jan 2026 14:02:46 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com,
        neil.armstrong@linaro.org, konrad.dybcio@oss.qualcomm.com
Subject: Re: [PATCH v2 4/6] phy: qcom: qmp-usb-legacy: Fix possible
 NULL-deref on early runtime suspend
Message-ID: <kkfqvtrb65e4orn3bnrwzbrepy6zrhanzfpdkfxyijizgj23gv@fyclbsutyekw>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
 <20260121142827.2583-5-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260121142827.2583-5-loic.poulain@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI2MDEwMiBTYWx0ZWRfX5IXHFVnetxAR
 VVsOkxQOZh0156QsYMfuoS1V2pwtWp9cE2zEATSiSrc3+p5LAlQOV81mIY0QlBHayivgWOZNsNO
 ZaNmOfcvCKXnYm2nRPNG8VQy0CKZ2BAoPUMnT/SeWSsfj9FTRE3JtF2CZ9EPUjC/L0g2DtMFNfz
 Uq56yfZNfDiq/YajLGvdp/rWaG/goGT21anYfwn7nUYevh587Od5iKbcuxsm9VdlblKLsiJDcaR
 8I+h2CfCzCzBpr+Plp2nqGRVQvCgacRh5vh/Sp7j8ntSsthAGBYKZOTQg9/kFJFLsrdEZa+5TBd
 QjimkE0FTGDqwuTjrDC3hCkT+9V38XhB/DSNA9egUX4ewHOzu7xGlQ0MvdNPSbAnPbhNSNhOvfc
 N6gr6SWXdarXVx1YIvW0imPSJkdlAj/av+B0DeY5ccek96U1g8zndAdI9ZJ6SfWaL3OEoeMCvqU
 1+nHEJE8gXyWuLHyBDA==
X-Authority-Analysis: v=2.4 cv=QN5lhwLL c=1 sm=1 tr=0 ts=697757ea cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=oauzzCmhM186DRC0Y2yWPg==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=I_ukrOqQsWpVYGr8uL4A:9
 a=CjuIK1q_8ugA:10 a=zZCYzV9kfG8A:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 7Ngbu9ipLWv3B7JpFG-DdqKkgqM7-jOk
X-Proofpoint-ORIG-GUID: 7Ngbu9ipLWv3B7JpFG-DdqKkgqM7-jOk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-26_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 adultscore=0 malwarescore=0 suspectscore=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601260102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_040252_087519_FBA89A96 
X-CRM114-Status: GOOD (  13.44  )
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

On 26-01-21 15:28:25, Loic Poulain wrote:
> There is a small window where the runtime suspend callback may run
> after pm_runtime_enable() and before pm_runtime_forbid(). In this
> case, a crash occurs because runtime suspend/resume dereferences
> qmp->phy pointer, which is not yet initialized:
>         `if (!qmp->phy->init_count) {`
> 
> This can also happen if user re-enables runtime-pm via the sysfs
> attribute before qmp phy is initialized.
> 
> Similarly to other qcom phy drivers, introduce a qmp->phy_initialized
> variable that can be used to avoid relying on the possibly uninitialized
> phy pointer.
> 
> Fixes: e464a3180a43 ("phy: qcom-qmp-usb: split off the legacy USB+dp_com support")
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

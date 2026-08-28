Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D1F4C61DB9
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 11:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKrTnL2HR4uUh/ziznmjjwO0BqwxDAYQzZ7C2lUj25g=; b=4+uErSm+STaOQ7
	NWMeWSNaVEwRzXClvPRnMWDvKJUyUyZAuBDcRLb/p+PXfk8F+gN3+rxxdtkDu02W62Tt6U2Vj34r0
	tN3TqbPPC7b7d8SlXrEbEiW1YKRKhrfNkOhe913hji6/AEGdIYSboNCrd9+MzDD9FbFgXmxlwK2+9
	PL2imf/G5Ge7m7MqbT+HYe56iMw6rTp8sCfayCcw+q7kWJI1xvci6826XI0EBuyxl7/lrs+P22ftD
	kHEtFqqSayCZifJDyBaLFKp8ZCtDbe7H6CwhP7R5/khoP3FF+jSFIIzyqAuBueLG6hzrhN6lvMlXn
	VhOAXo66K0PU8hB/jiyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv5q-00000005gae-3IH2;
	Fri, 28 Aug 2026 11:49:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv5o-00000005gaB-0OB5
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 11:49:57 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67SA7cqe2744792
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 11:49:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zkscxSeQA75G5CVLELcqbbwuEp11lW2ijBGhi/h86ik=; b=JhEsOIRO+a/i+u/r
	lv9dHczGxjqUsTe3Qwz8GafxHU13THPXMyE25KvSWe3Rd9gz7/laWRzJe5e/E1HK
	aOtHFWmWlGGLggkELzg7LfP7Z+T95CSgZ4U8Upa+ZXIWmoqBuMvvUhJoSJzXYZAH
	C+oy1TEku44trBtEavVlJIJfhue707iyK5rjK37AEi5pM5Fsh6X+M29mZEEct/2p
	TWAVHHmj+/VeRuIFhqmo7WqpjKIDCPzwHXCECiXWNu6neE/o/jj+NQQigVzTZ9tQ
	SNcmIJr7QuC+qmOb53OWtg3Q2cMDRAvQP75GTXjXvwUBwMZ9QU0rgYfGlE5hfZ0t
	STO2vw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3mxsk3j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 11:49:55 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-52b4e315000so2838781cf.1
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 04:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787917794; x=1788522594; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=zkscxSeQA75G5CVLELcqbbwuEp11lW2ijBGhi/h86ik=;
        b=J4h03nceCAiEk3gZD2qf+OF+Sx8+v6sbqkptUlfaj9AGxZdK4iNvpJmmrjQQOvszbu
         tJXWNVSFcs/udk2Xlx7KNTaOYLFSRd431fTmM2e/kfEwz++Mj/mJLqMjDSUbod9n4Uu3
         SVsbMeD9X5L9sMukaoizMuCudFRDYB+SgPQePVEiX0O/aLmaV0l5uPOO/7rbGxIU7aUD
         iEIX04Wm+5lyhJJAdHDIa0QXlkO/naza24OfvWQvJStPDq+WijlMmkVs6cp2njfFeKgF
         Mod/dqJ+huo+NeoiTNkDW09Yh3H7p777AgXhQjHZ2Oe4U1V/om5MtZv59huQcnqOIInN
         CRlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787917794; x=1788522594;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=zkscxSeQA75G5CVLELcqbbwuEp11lW2ijBGhi/h86ik=;
        b=YV0GNtMVwUSq6gWliPHH5JuhlEQVkbCPbhclx1el0IFeyIW0IpXnC29pQfIdkMWfo5
         1sTk4jSsn15A9eRd7NH4kVKSXmPQsEOq4Ejn3QKC8U+3NXe7n3EPbgDvwSI+ePDpouli
         0rxvqc6IgBeIGrF5bhtrjh+ftjUHVmwrIFJxZfHyFRPLIgtvsEzvxNFAiXRbL7/vrHTl
         MdiAXo+Cy0iynWmqk5Hol3jIlmUesp2vepgqJ3XjshiVDOUBm911toRLCRDaZ7hCkIxH
         YJHir3oSxh16Jok7zWjHbaynqu7gKiELCnoNBYgm7D3zx+S6Cj1K3V4MRvtpPiuCsLZF
         SRmw==
X-Forwarded-Encrypted: i=1; AHgh+RrNxJ5XTSXqRN6U3irXGSaUAVjX7nCei8N/pVZ8cP/quOV0LXYQi1a5Mp5FXVKJMrIXnF4r/n9d5uw=@lists.infradead.org
X-Gm-Message-State: AFuF++n/KOThSPDChZlqERSXPyrgitCaJSecZYmOGkxxM+cwORyKpEu4
	zfdMZxFn/uPtsApJ1tSePZV5sLyXZlQgcCazAgCNXMh3HUpDM/I4DTmA6qe78Pju2b7mpoxanfq
	qNiUT1rUkyBZuy10sj+cKhcytoyBJsIyij28a6H1PJx3xpjJNH/VnhZeF/KI/IUWosmR9HJXbjG
	ng
X-Gm-Gg: AR+sD13uJD6N/EbLYDZ+CtcrQdISNwUrOXt6iOVx8Qv77OL6IoNwf1ma9jfwQN5a2ur
	vP22LIl7ns79lbEuwT+jYBElqlcxNMPJkDNDpxTL5DE5Hc2nYu4CPk38raoxOw8g+qUeFG2YiSP
	+CiikmRblSliLBzNNh1+YnTxK5XsRltSAgaQ2oXTuXFeM+qU9mqbPaQ76UIWsbqr8aVmSy1B32t
	Dp0sBJIAZVShorb4pKz9RPOfbsVGgznOaRjpOyB6gm4oArotU1/Dz9vxbq3b0iYEvNv8E4nr5cD
	46BFpL+wyf15wjMRN8Ah7kxGEuAI11OFqArqnIWMhjWGLwmK6KjOs5ORjC+4U3BVV0TFRH3ZHFl
	bTRjaHCBIzs/f3CX/dimys6M=
X-Received: by 2002:a05:622a:130b:b0:51c:2324:666 with SMTP id d75a77b69052e-52fb9603de5mr48555531cf.3.1787917794476;
        Fri, 28 Aug 2026 04:49:54 -0700 (PDT)
X-Received: by 2002:a05:622a:130b:b0:51c:2324:666 with SMTP id d75a77b69052e-52fb9603de5mr48554871cf.3.1787917793734;
        Fri, 28 Aug 2026 04:49:53 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6a611c38e82sm439669a12.19.2026.08.28.04.49.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2026 04:49:52 -0700 (PDT)
Message-ID: <cc0906d0-5a56-4878-88c6-24f28a7b2fd2@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 13:49:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] phy: qualcomm: qmp-combo: Update link rate
 specific DP PHY tables
To: Nabige Aala <nabige.aala@oss.qualcomm.com>, Vinod Koul
 <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>
References: <20260828-glymur-phy-v3-v3-0-8e73ce7c4636@oss.qualcomm.com>
 <20260828-glymur-phy-v3-v3-3-8e73ce7c4636@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260828-glymur-phy-v3-v3-3-8e73ce7c4636@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDEwMSBTYWx0ZWRfX1qO6dvinQbXp
 n9qXbrnggbB5A7l5hg0BUbC7hN/3xnYFRJ9RsdKhEgJd99DkeJi0cTdmpV33ksy4y6i4jAFJG36
 1t2tT5PAYH0vktckSxL0cOVv/nLELXmf6VqgixiBzjwtDo6oy5dns+yFioKdpKRhxK5tBPpf3sF
 YyaSBgghX9MiXXJAW3a3tzFNacgpDd0MePzPuF4MNJvMetnCPHll+0wQvETxq9CgcNJHwH/bzF3
 NWcATietmbDw3e3lF9+QdIFx3J+U3Oaiagok7sEwmgTZDe7EzVrqwqshXpv+w04MxFTdSwJKq0C
 LGMux+EKMyLNaxhZ8z9c7nYo2+/BcSdjkXobDwioGQBBGqNozqXBJ8PwwdEygMOktOEi3JaM1HE
 SRnjpfAgX4dhQERzwuYzHLYFtftqN8qTD8K0q5rosGQrUXeuvlg2PTBGeUYzdon1BgGNR+0HBmg
 2PDgcA6n9W2OQfiWRTQ==
X-Authority-Analysis: v=2.4 cv=MONQXsZl c=1 sm=1 tr=0 ts=6a9175e3 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=ICfJUWih502foIDt9eMA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDEwMSBTYWx0ZWRfX7N6zlv2l25Ih
 76t6bSN8Fh4uO3NVJgkgsWPazDueIijqM0lUMAwdWlsv7xMJwTMBX8dTfenR8PV4MFR1C0y+9gQ
 KULu+Li3S7G/cmgJX3m8iyTCvGqbarI=
X-Proofpoint-ORIG-GUID: AA0Vy0Z8DYUteRnaOR_X1e-E2z2PwPTd
X-Proofpoint-GUID: AA0Vy0Z8DYUteRnaOR_X1e-E2z2PwPTd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_03,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_044956_273137_CFA6BD9C 
X-CRM114-Status: UNSURE (   7.02  )
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

On 8/28/26 11:43 AM, Nabige Aala wrote:
> From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> 
> Update DP PHY initialization tables for all link rates (RBR, HBR,
> HBR2, HBR3) with corrected VCO calibration codes, lock compare
> values, SSC step sizes, clock forward config, and bias enable
> settings for proper PLL programming across different data rates.
> 
> Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
> Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
> Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
> ---

Fixes: d10736db98d2 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
